import 'package:flutter/material.dart';
import 'package:graduation_project/widget/CustomNavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
        home: CustomNavBar()
    );
  }
}
const Color primaryColor=Color(0xffABD6E5);
