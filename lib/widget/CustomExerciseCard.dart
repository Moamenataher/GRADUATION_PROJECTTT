import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/widget/CustomText.dart';

class CustomExerciseCard extends StatelessWidget {
  const CustomExerciseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.grey,
          child:CustomText(text: "flexHand", size: 22, color: Color(0xff596992), textAlign: TextAlign.center)
        ),
        SizedBox(height: 6,),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset("assets/michel.jpg"),

        ),
        CustomText(text: "discription", size: 20, color: Color(0xff9BA1B2), textAlign: TextAlign.center)
      ],
    );
  }
}
