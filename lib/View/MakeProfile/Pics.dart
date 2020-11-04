import 'dart:io';
import 'package:dating_app_stage2/Models/User.dart';
import 'package:dating_app_stage2/Services/WebServices.dart';
import 'package:dating_app_stage2/View/MakeProfile/Age.dart';
import 'package:dating_app_stage2/View/MakeProfile/Name.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import '../Camera.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Pics extends StatefulWidget {
  @override
  _PicsState createState() => _PicsState();
}

class _PicsState extends State<Pics> {
  String imagePath;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          children: [
            Center(
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red,style: BorderStyle.solid,),
                  ),
                  width: 200,
                  height: 200,
                  child:imagePath!=null ? Image.network(imagePath):Container(),
                ),
                onTap: () async {
                  imagePath = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OpenCamera()),
                  );
              }
              ),
            ),
            IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
              uploadImageToFirebase(context);

            })
          ],
        ),
      ),
    );
  }
  Future uploadImageToFirebase(BuildContext context) async {
    String fileName = basename(imagePath);
    StorageReference firebaseStorageRef =
    FirebaseStorage.instance.ref().child('new/$fileName');
    StorageUploadTask uploadTask = firebaseStorageRef.putFile(File(imagePath));
    StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
    taskSnapshot.ref.getDownloadURL().then((value) {
      setState(() {
        this.imagePath=value;
            WebServices.PicsRef.push().set({'pics' : imagePath});
      });
      print(value);
    });
  }

}
