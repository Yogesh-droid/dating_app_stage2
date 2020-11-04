import 'package:dating_app_stage2/Models/User.dart';
import 'package:dating_app_stage2/Services/WebServices.dart';
import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  static final nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red,width: 100,)
                ),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                  hintText: 'Enter your name'
                ),),
              ),
              IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
                WebServices.NameRef.push().set({'name' : nameController.text});
                Navigator.pushNamed(context, '/age');
              })
            ],
          ),
        ),
      ),
    );
  }
}
