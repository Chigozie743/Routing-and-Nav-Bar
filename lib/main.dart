import 'package:flutter/material.dart';
import 'package:uidesign/Screen/Test/test_category.dart';
import 'package:uidesign/Screen/welcome/welcome_page.dart';
import 'package:uidesign/Screen/welcome/main_page.dart';
import 'package:uidesign/Screen/Courses/courses.dart';
import 'package:uidesign/Screen/Home/home_page.dart';
import 'package:uidesign/constants.dart';
import 'item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Design',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomePage(),
    );
  }
}
