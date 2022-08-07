import 'package:flutter/material.dart';
import 'package:uidesign/Screen/Test/test_category.dart';
import 'package:uidesign/Screen/Courses/courses.dart';
import 'package:uidesign/Screen/Home/home_page.dart';
import 'package:uidesign/calculator.dart';
import 'package:uidesign/idapp2.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    Container(),
    PrimaryPage(),
    BillSplitter(),
    SkillupCard(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          // To fix the whiteness and invisibility, use type:BottomNavigationBarType.fixed
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.grey[200],
          onTap: onTap,
          currentIndex: currentIndex, //currentIndex is used to identify the current page
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey[700],
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.group_add_outlined), label: 'Coursemates'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Courses'),
            BottomNavigationBarItem(icon: Icon(Icons.calculate_rounded), label: 'Bill Calculator'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Profile')
          ]),
    );
  }
}
