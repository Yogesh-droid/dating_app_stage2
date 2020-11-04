import 'package:dating_app_stage2/Services/WebServices.dart';
import 'package:flutter/material.dart';

class Age extends StatelessWidget {
  static final ageController=TextEditingController();
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
                  controller: ageController,
                  decoration: InputDecoration(
                      hintText: 'Enter your Age'
                  ),),
              ),
              IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
                WebServices.AgeRef.push().set({'age': ageController.text});
                Navigator.pushNamed(context, '/pic');
              })
            ],
          ),
        ),
      ),
    );
  }
}
