import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter instagram',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
        appBar: AppBar( // barre de navigation
          backgroundColor: Colors.white,
          elevation: 0,
          title: Image.asset(
            'assets/instagram-Log.png',
          
            ),

        ),
      ),
    );
  }
}
