import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/CustomText.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon:const Icon(Icons.arrow_back_outlined,
                    size: 30,
                    color: Colors.grey,)),
              const Spacer(flex: 1),
              const CustomText(text: "Exercises", size: 28, color: Color(0xff8E95A7), textAlign: TextAlign.center),
              const Spacer(flex: 2),
            ],
          ),
        ],
      ),

    );
  }
}
