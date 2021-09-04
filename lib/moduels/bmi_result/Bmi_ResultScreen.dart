

import 'package:flutter/material.dart';

class Bmi_ResultScreen extends StatelessWidget {
  final int Result;
  final bool isMale;
  final int age;
  Bmi_ResultScreen({
    required this.age,
    required this.Result,
    required this.isMale,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Bmi Result') ,
      ) ,
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            Text('Gender : ${isMale? 'male': 'female'}',
            style:TextStyle(
              fontSize:25.0,
              fontWeight:FontWeight.bold,
            ) ,
            ),
            Text('Result : $Result',
              style:TextStyle(
                fontSize:25.0,
                fontWeight:FontWeight.bold,
              ) ,
            ),
            Text('Age : $age',
              style:TextStyle(
                fontSize:25.0,
                fontWeight:FontWeight.bold,
              ) ,
            ),
         ],
        ),
      ) ,
    );
  }
}
