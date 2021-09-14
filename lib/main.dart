import 'package:flutter/material.dart';
import 'package:flutter_application_3/assets/lists.dart';
// import 'package:flutter_application_3/homepage.dart';
// import 'package:flutter_application_3/login_page.dart';
// import 'package:flutter_application_3/login_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Lists(),
    );
  }
}
