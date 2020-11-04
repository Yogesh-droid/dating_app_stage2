import 'package:flutter/material.dart';

/*class DragTargets extends StatefulWidget {
  @override
  _DragTargetsState createState() => _DragTargetsState();
}*/

/*class _DragTargetsState extends State<DragTargets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DragTarget(
        //first DragTarget
        builder: (context, List<int> candidateData, rejectData) {
          return Container(
            width: 40,
          );
        },
        onWillAccept: (data) {
          return true;
        },
        onAccept: (data) {
          if (data == 5) {
            setState(() {
              status = 'Dislike';
              showStatus = true;
              _list.removeAt(firstIndex);
              _imageList.removeAt(firstIndex);
              _name.removeAt(firstIndex);
              showDislike = true;
            });
            print('accepted');
          } else {
            setState(() {});
            print('reject');
          }
        },
      ),
    );
  }
}*/
