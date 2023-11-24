import 'package:flutter/material.dart';
import 'package:graduation_project/pages/Doctor_page.dart';
import 'package:graduation_project/widget/CustomHomeAppBar.dart';
import 'package:graduation_project/widget/CustomServicesCard.dart';
import 'package:graduation_project/widget/CustomText.dart';
import 'package:graduation_project/widget/CustomViewMeasurement.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key, });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      drawer:const drawer(),
      body:
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                const CustomHomeAppBar(),
                const CustomViewMeasurement(),

                const SizedBox(height: 15,),

                const Row(
                  children: [
                    CustomText(text: "Other services", size: 22, color: Color(0xff596992), textAlign: TextAlign.left)
                  ],
                ),
                const SizedBox(height: 15,),

                Row(
                  children: [
                    const Spacer(flex: 3,),
                    CustomServiceCard(
                      onTap: (){},
                        image: "assets/VMService.png", lable: "Disease Diagnosis"),
                    const Spacer(flex: 2),
                    CustomServiceCard(
                      onTap: (){},
                        image: "assets/exersiseService.png", lable: "Exercises"),
                    const Spacer(flex: 3,),
                  ],
                ),

                const SizedBox(height: 15,),

                Row(
                  children: [
                    const Spacer(flex: 3,),
                    CustomServiceCard(
                      onTap: (){
                        Navigator.push(
                            context,
                             MaterialPageRoute(
                                 builder:(context)=>const DoctorPage()
                             ));
                      },
                        image: "assets/doctorService.png", lable: "Doctors"),
                    const Spacer(flex: 2),
                    CustomServiceCard(
                        onTap:(){},
                        image: "assets/progress indicator.png", lable: ""),
                    const Spacer(flex: 3,),
                  ],
                )

              ],
            ),
          ),
        ),


    );
  }
}


