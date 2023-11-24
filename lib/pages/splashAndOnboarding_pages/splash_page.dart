
import 'package:flutter/material.dart';
import 'package:graduation_project/pages/splashAndOnboarding_pages/onBoardingPages.dart';
import 'package:graduation_project/widget/CustomAppBar_widget.dart';
import 'package:graduation_project/widget/CustomButton.dart';
import 'package:graduation_project/widget/CustomText.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
        Padding(
          padding: const  EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
            const  CustomAppBar(

                color:  Color(0xffABD6E5)),
              const Spacer(flex: 1,),

              Image.asset("assets/doctorAndPatient.png"),
              const  Spacer(flex: 1,),

              const CustomText(
                textAlign: TextAlign.center,
                  text: "We aim to make your life easier",
                  size:20 ,
                  color:  Color(0xff58B0CD),),
              const Spacer(flex: 1,),
              
               CustomButton(
                onPressed: (){
                  Navigator.push(
                      context,
                     MaterialPageRoute(
                         builder: (context)=>const OnBoardingPage()));
                },
                fontSize: 26,
                  childText:"Let’s start >",
                  textColor: const Color(0xff58B0CD)),
              const Spacer(flex: 1,),




            ],
          ),
        )
    );
  }
}
