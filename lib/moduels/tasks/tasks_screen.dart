import 'package:flutter/cupertino.dart';
import 'package:rgrg/moduels/archived/archived_screen.dart';
import 'package:rgrg/moduels/done/done_screen.dart';

class tasks_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'New Tasks',
        style:TextStyle(
          fontSize:30.0,
          fontWeight:FontWeight.bold,

        ) ,
      ),
    );
  }
}
