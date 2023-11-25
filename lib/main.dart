import 'package:flutter/material.dart';
import 'package:graduation_project/pages/DieseaseDiagnose_page.dart';
import 'package:graduation_project/pages/Exercise_page.dart';
import 'package:graduation_project/pages/haveTheDiseas_page.dart';
import 'package:graduation_project/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: true,
        home: HaveTheDiseae()
    );
  }
}
const Color primaryColor=Color(0xffABD6E5);
