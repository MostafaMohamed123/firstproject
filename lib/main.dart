import 'dart:core';
import 'package:flutter/material.dart';
import 'package:rgrg/moduels/counter/CounterScreen.dart';
import 'package:rgrg/moduels/login/login_screen.dart';
import 'package:rgrg/moduels/messenger/messenger_screen.dart';

import 'layout/home_layout.dart';
import 'moduels/bmi_result/Bmi_ResultScreen.dart';
import 'moduels/bmi/Bmi_screen.dart';
import 'moduels/challange 1/challange 1 _result.dart';
import 'moduels/challange 1/challange 1.dart';
import 'moduels/home/home_screen.dart';
import 'moduels/user/user_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:challange_1(),);
  }
}

