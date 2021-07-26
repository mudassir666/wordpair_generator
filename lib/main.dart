import 'package:flutter/material.dart';
import 'package:wordpair_generator/randomWord.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.purple[900],
      ),
      debugShowCheckedModeBanner: false,
      title: "WordPair",
      home: RandomWords(),
    );
  }
}
