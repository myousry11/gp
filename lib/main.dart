import 'package:flutter/material.dart';
import 'package:untitled6/layout/home_layout.dart';
import 'package:untitled6/modules/bmi_result/bmi_result_screen.dart';
import 'package:untitled6/modules/bmi/bmi_screen.dart';
import 'package:untitled6/modules/counter/counter_screen.dart';
import 'package:untitled6/modules/dashboard_tasks/dashboard_tasks_screen.dart';
import 'package:untitled6/modules/login/login_screen.dart';
import 'package:untitled6/modules/messenger/messenger_screen.dart';
import 'package:untitled6/modules/onboarding/ob1_screen.dart';
import 'package:untitled6/modules/profile/profile_screen.dart';
import 'package:untitled6/modules/splash/splashscreen.dart';
import 'package:untitled6/modules/users/users_screen.dart';

import 'modules/signup/signup_screen.dart';

void main() {
  runApp(MyApp());
}

// Stateless
// Stateful

// class MyApp

class MyApp extends StatelessWidget {
  // constructor
  // build

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}
