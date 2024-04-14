import 'package:flutter/material.dart';
import 'package:news_stream/view/screens/home.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  navigate() {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AnimatedTextKit(animatedTexts: [
                ColorizeAnimatedText(
                  "News Stream",
                  textStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 55,
                  ),
                  colors: [
                    Colors.teal,
                    const Color.fromARGB(255, 3, 63, 57),
                    Colors.teal,
                  ],
                )
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator.adaptive(
              backgroundColor: Colors.teal,
            ),
            SizedBox(
              height: 100,
            ),
            // Text(
            //   "Developed by nightlight4190",
            //   style: TextStyle(
            //     color: Colors.teal,
            //     fontWeight: FontWeight.w400,
            //     fontSize: 18,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
