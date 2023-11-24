import 'package:flutter/material.dart';
import 'package:graduation_project/pages/instruction_page.dart';
import 'package:graduation_project/widget/CustomText.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/logo.png",
            width: 70,
            height:70,
          ),
          Builder(
              builder:(context) {
                return MaterialButton(
                    onPressed: ()=>Scaffold.of(context).openDrawer(),
                    child:const Icon(Icons.menu,color: Color(0xff58B0CD),size: 35,)
                );
              }
          )
        ],
      ),
    );
  }


}
class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:const Color(0xff58B0CD) ,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: ListView(
          children: [
            const  ListTile(
              leading: Icon(Icons.menu,color: Colors.white,size: 40,),),

            SizedBox( height: 1.3, width: double.infinity,child: Container(color: Colors.white,),
            ),

            Padding(
              padding: const  EdgeInsets.symmetric(vertical: 12.0),
              child: GestureDetector(
                onTap: (){},
                child: const ListTile(
                  leading:Icon(Icons.account_circle, color: Colors.white,size: 40,),
                  title: CustomText(text: "Profile", size: 20,color: Colors.white, textAlign: TextAlign.left),
                ),
              ),
            ),
            SizedBox( height: 1.3, width: double.infinity,child: Container(color: Colors.white,),
            ),


            //---------------------------------------------------------------

            Padding(
              padding: const  EdgeInsets.symmetric(vertical: 12.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context)=>InstructionPage()));

                },
                child: const ListTile(
                  leading:Icon(Icons.integration_instructions_outlined, color: Colors.white,size: 40,),
                  title: CustomText(text: "Instructions", size: 20,color: Colors.white, textAlign: TextAlign.left),
                ),
              ),
            ),
            SizedBox( height: 1.3, width: double.infinity,child: Container(color: Colors.white,),
            ),


            //---------------------------------------------------------------

            Padding(
              padding: const  EdgeInsets.symmetric(vertical: 12.0),
              child: GestureDetector(
                onTap: (){},
                child: const ListTile(
                  leading:Icon(Icons.handshake, color: Colors.white,size: 40,),
                  title: CustomText(text: "Feedback&Support", size: 20,color: Colors.white, textAlign: TextAlign.left),
                ),
              ),
            ),
            SizedBox( height: 1.3, width: double.infinity,child: Container(color: Colors.white,),
            ),


            //---------------------------------------------------------------

            Padding(
              padding: const  EdgeInsets.symmetric(vertical: 12.0),
              child: GestureDetector(
                onTap: (){},
                child: const ListTile(
                  leading:Icon(Icons.logout_sharp, color: Colors.white,size: 40,),
                  title: CustomText(text: "Log out", size: 20,color: Colors.white, textAlign: TextAlign.left),
                ),
              ),
            ),
            SizedBox( height: 1.3, width: double.infinity,child: Container(color: Colors.white,),
            ),


            //---------------------------------------------------------------


          ],
        ),
      ),
    );;
  }
}
