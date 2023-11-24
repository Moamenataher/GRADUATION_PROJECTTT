import 'package:flutter/material.dart';
import 'package:graduation_project/widget/CustomNavBar.dart';

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    void main() {
      runApp(const MyApp());
    }

    class MyApp extends StatelessWidget {
    return const  MaterialApp(
      home: CustomNavBar()
    );
  }
}
const Color primaryColor=Color(0xffABD6E5);
