import 'package:flutter/material.dart';
import 'package:news_stream/view/screens/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News Stream',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: SplashScreen(),
    );
  }
}
