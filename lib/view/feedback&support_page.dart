import 'package:flutter/material.dart';
import 'package:graduation_project/widget/CustomText.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(children: [
            Row(children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                    size: 30,
                    color: Colors.grey,
                  )),
            ]),
            Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: Image.asset("assets/support.png"),
                  ),
                ]),
              ),
            ),
           const SizedBox(height: 30,),
           const Center(
             child:  Text("Are you facing any problem?",
                style:TextStyle(
                  color: Color(0xff5E6D92),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ) ,),
           ),
           const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 70.0),
              child: Center(
                child:  Text("if you need instart support you can contact at",
                  style:TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ) ,),
              ),
            ),
            SizedBox(height: 70,),
            const Center(
              child: Text("Isal Jack @gmail.com",
                style: TextStyle(
                    color: Color(0xff5E6D92),
                    fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),

              ),
            ),
            SizedBox(height: 10,),
            const Center(
              child: Text("Olivia Owen @gmail.com",
                style: TextStyle(
                    color: Color(0xff5E6D92),
                    fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),

              ),
            ),
            SizedBox(height: 10,),
            const Center(
              child: Text("Emaa Lack @gmail.com",
                style: TextStyle(
                    color: Color(0xff5E6D92),
                    fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),

              ),
            ),
            SizedBox(height: 10,),
            const Center(
              child: Text("Samuel Dylan @gmail.com",
                style: TextStyle(
                    color: Color(0xff5E6D92),
                    fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),

              ),
            ),
            const SizedBox(height: 120,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Center(
                  child: Text("May be have already the solution",
                    style: TextStyle(
                        color: Color(0xff5E6D92),
                        fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(child: Icon(Icons.face,color: Color(0xff5E6D92),)),
              ],
            )

          ]),

        ),

      ),
    );
  }
}
