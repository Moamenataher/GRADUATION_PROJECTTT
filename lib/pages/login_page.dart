import 'package:flutter/material.dart';
import 'package:graduation_project/pages/ResetPassword_pages/EnterYourEmail_page.dart';
import 'package:graduation_project/pages/register_page.dart';
import 'package:graduation_project/widget/CustomAppBar_widget.dart';
import 'package:graduation_project/widget/CustomButton.dart';
import 'package:graduation_project/widget/CustomText.dart';
import 'package:graduation_project/widget/CustomTextField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;

 final GlobalKey<FormState> loginKey=GlobalKey();

 bool obscureText=true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
       SingleChildScrollView(
         child: Form(
           key: loginKey,
           autovalidateMode: autovalidateMode,
           child: Column(
            children: [
             const CustomAppBar(
              imageWidth:150,
                  imageHeight: 150,
                  color:Color(0xffABD6E5)),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 36.0,horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const CustomText(
                        textAlign: TextAlign.left,
                        text:"Welcome to Glovy!",
                        size:26,

                        color:Color(0xff596992)),

                   const SizedBox(height: 10,),

                   const  CustomText(
                      textAlign: TextAlign.left,
                        text: "Create an account or login to start using the app",
                        size: 18,
                        color: Color(0xff797E83)),

                    const  SizedBox(height: 55,),

                    const CustomTextField(
                       validateMessege: "email is required",
                        keyBoardType: TextInputType.text,
                        fieldLable: "Email or User name"),

                    const SizedBox(height: 20,),

                     CustomTextField(
                        isObscure:obscureText,
                        suffixIcon: IconButton(
                            onPressed:(){
                              setState(() {
                                obscureText=!obscureText;

                              });
                            },
                            icon:const Icon(Icons.remove_red_eye)),
                        validateMessege: "password is required",
                       keyBoardType: TextInputType.visiblePassword,
                        fieldLable: "Password"),

                    const SizedBox(height: 40,),

                    CustomButton(
                       fontSize: 20,
                        containerWidth: double.infinity,
                        textColor:Colors.white,
                        backgroundColor: const Color(0xff58B0CD),
                        childText: "Sign in",
                        onPressed: (){
                          setState(() {

                          });
                          if(loginKey.currentState!.validate()){
                            loginKey.currentState!.save();

                          }
                          else{
                            autovalidateMode=AutovalidateMode.always;

                          }


                        }),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       const CustomText(
                           text: "Don't have an account?",
                           size: 18,
                           color: Color(0xff596992),
                           textAlign: TextAlign.center),
                        CustomButton(
                          fontSize: 18,
                            textColor:const  Color(0xff58B0CD),
                            childText: "Sign up",
                            onPressed:(){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context)=>const RegisterPage()));
                            })
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                            fontSize: 18,
                            textColor: const Color(0xff58B0CD),
                            childText: "Reset password",
                            onPressed:(){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context)=>const EnterYourEmail()));
                            })
                      ],
                    )




                  ],
                ),
              )
              ]
      ),
         ),
       ),
    );
  }
}
