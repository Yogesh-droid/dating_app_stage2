/*
import 'package:dating_app_stage2/View/Background.dart';
import 'package:dating_app_stage2/View/DragTargets.dart';
import 'package:dating_app_stage2/View/Draggables.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

 final int firstIndex = 0;
 final int secondIndex = 1;
 final int thirdIndex = 2;
 final bool showStatus = false;
 final String status = '';
 final int imageIndex = 0;
 final bool showLike = false;
 final bool showDislike = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Stack(
          children: [
            firstIndex < _list.length //this is for background
                ? Background() : Container(),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DragTargets(),
            DragTargets()
          ]),
          Draggables(),
          ],
        )
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}