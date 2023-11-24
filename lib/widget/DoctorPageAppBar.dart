import 'package:flutter/cupertino.dart';
import 'package:graduation_project/widget/CustomText.dart';

class DoctorPageAppBar extends StatelessWidget {
  const DoctorPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: const  LinearGradient(

              colors: [
                Color(0xffA3CBFA),
                Color(0xffDFE4EB)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          )
      ),
      
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
              "assets/dctrpg.png",
              width: 120,
              height: 120,
          ),

          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(text: "Looking for a doctor?", size:22, color: Color(0xff596992), textAlign: TextAlign.center),
              SizedBox(height: 12,),
              CustomText(text: "Chech the list of the best ", size: 18, color: Color(0xff8E95A7), textAlign: TextAlign.center,fontWeight: FontWeight.bold,),
              CustomText(text: " nearest doctors", size: 18, color: Color(0xff8E95A7), textAlign: TextAlign.left,fontWeight: FontWeight.bold,)

            ],
          )
        ],
      ),
    );
  }
}
