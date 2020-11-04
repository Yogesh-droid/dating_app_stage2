import 'package:flutter/material.dart';

/*class Draggables extends StatefulWidget {
  @override
  _DraggablesState createState() => _DraggablesState();
}*/

/*class _DraggablesState extends State<Draggables> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        //this is to show Likes and Dislikes
          top: 50,
          left: 100,
          child: (showStatus)
              ? Container(child: Text(status))
              : Container()),
      Positioned(
        top: MediaQuery.of(context).size.height * .23,
        left: MediaQuery.of(context).size.width * .08,
        child: Draggables(
          data: 5,
          feedback: thirdIndex < _list.length
              ? _list[thirdIndex]
              : Container(),
          child: thirdIndex < _list.length
              ? _list[thirdIndex]
              : Container(),
          childWhenDragging: Container(
            width: 200,
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * .27,
        left: MediaQuery.of(context).size.width * .12,
        child: Draggables(
          data: 5,
          feedback: secondIndex < _list.length
              ? _list[secondIndex]
              : Container(
            child: Text(
              status,
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
          child: secondIndex < _list.length
              ? _list[secondIndex]
              : Container(),
          childWhenDragging: Container(
            width: 200,
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * .31,
        left: MediaQuery.of(context).size.width * .16,
        right: MediaQuery.of(context).size.height * .02,
        child: GestureDetector(
          *//* onHorizontalDragEnd: (DragEndDetails details) {
                      if (details.primaryVelocity > 0) {
                        // User swiped Left
                      } else if (details.primaryVelocity < 0) {
                        // User swiped Right
                        setState(() {
                          showLike = true;
                        });
                      }
                    }, *//*
          *//* onPanUpdate: (details) {
                      if (details.delta.dx > 0) {
                        // swiping in right direction
                        showLike = true;
                        print('object');
                        setState(() {
                          //showLike = true;
                        });
                      }
                    }, *//*
          onTap: () {
            Navigator.pushNamed(context, '/profiledetail',
                arguments: ProfileDetailProvider(_name[firstIndex]));
          },
          child: Draggables(
            onDragStarted: () {
              // setStatus();
            },
            data: 5,
            feedback: firstIndex < _list.length
                ? _list[firstIndex]
                : Container(),
            child: firstIndex < _list.length
                ? _list[firstIndex]
                : Container(),
            childWhenDragging: Container(
              width: 200,
            ),
          ),
        ),
      ),
      showLike
          ? Positioned(
          top: 30,
          left: 300,
          child: Container(
            child: Text(
              'Like',
              style: TextStyle(color: Colors.red, fontSize: 40),
            ),
          ))
          : Container(),
    ]);
  }
}*/
