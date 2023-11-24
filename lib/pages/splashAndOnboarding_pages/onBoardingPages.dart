import 'package:flutter/material.dart';
import 'package:graduation_project/pages/login_page.dart';
import 'package:graduation_project/widget/CustomOnBoardinScreen.dart';
class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final controller =PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          controller: controller,
          children:[
            CustomOnBoardingScreen(
                lable:"Track hand vibrations",
                content: "Periodic monitoring of the patient’s condition by tracking hand vibrations on a graph",
                image: "assets/trackVibration.png",
                onPressed: (){
                  controller.nextPage(
                      duration:const Duration(microseconds: 500), curve: Curves.easeInOut);
                },
              buttonText: "Next",
              containerWidth:320,

                ),


            CustomOnBoardingScreen(
                lable:"Exercise",
                content: "The app offers exercises for patients with parkinson’s disease",
                image: "assets/exrcise.png",
                onPressed: (){
                  controller.nextPage(
                      duration:const Duration(microseconds: 500), curve: Curves.easeInOut);
                },
            buttonText: "Next",
              containerWidth:320,

            ),


          CustomOnBoardingScreen(
              lable: "Privacy",
              image: "assets/privacy.png",
              onPressed: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(
                       builder:(context)=>const LoginPage())
               );
              } ,
              content: "keep patient information strictly confidential",
              buttonText:"Get started",
          containerWidth: 360)


          ],
        ),
      ),


    );
  }
}
