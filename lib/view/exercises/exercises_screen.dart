import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ExerciseObj {
  final String title;
  final String url;

  ExerciseObj({
    required this.title,
    required this.url,
  });
}

class ExercisesScreen extends StatefulWidget {
  const ExercisesScreen({super.key});

  @override
  ExercisesScreenState createState() => ExercisesScreenState();
}

class ExercisesScreenState extends State<ExercisesScreen> {
  final List<ExerciseObj> videoEmbedUrls = [
    ExerciseObj(
      title: "Exercise Recommendations for Parkinson's Disease",
      url: "https://www.youtube.com/embed/9MIFX0w7At8",
    ),
    ExerciseObj(
      title: "7 Helpful Hand Exercises for Parkinson's (to Improve Handwriting, Flexibility, and Dexterity)",
      url: "https://www.youtube.com/embed/Ez2GeaMa4c8?si=GmW5Ik4ctU9U9JZu",
    ),
    ExerciseObj(
      title: "3 Chair Excercises for Parkinson's Patients: Improve Mobility, Posture, and Lateral Motion.",
      url: "https://www.youtube.com/embed/EqHcDCYRdZU",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset("assets/icons/arrow_right_ic.svg"),
        ),
        title: const Text("Exercises"),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: videoEmbedUrls.length,
          padding: const EdgeInsets.symmetric(vertical: 8),
          physics: const ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            var wvController = WebViewController()
              ..setJavaScriptMode(JavaScriptMode.unrestricted)
              ..setBackgroundColor(const Color(0x00000000))
              ..setNavigationDelegate(
                NavigationDelegate(
                  onProgress: (int progress) {
                    // Update loading bar.
                  },
                  onPageStarted: (String url) {},
                  onPageFinished: (String url) {},
                  onWebResourceError: (WebResourceError error) {},
                  onNavigationRequest: (NavigationRequest request) =>
                  NavigationDecision.navigate,
                ),
              );
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: const BoxDecoration(
                      color: Color(0xffFEFEFE),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:  Center(
                      child: Text(
                        videoEmbedUrls[index].title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xff596992),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: WebViewWidget(
                      controller: wvController
                        ..loadRequest(
                          Uri.parse(
                            videoEmbedUrls[index].url,
                          ),
                        ),
                    ),
                  ),
                  // const Text(
                  //   "Extend the right and left arms forward, interlock them together, and extend them forward until you feel a slight stretch for 15 to 30 seconds.",
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     color: Color(0xff9BA1B2),
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  // ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
