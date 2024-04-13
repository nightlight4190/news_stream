import 'package:flutter/material.dart';

import 'view/screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News Stream',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const HomeScreen(),
    );
  }
}
