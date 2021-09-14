// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/input_component.dart';
// import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var url = "https://jsonplaceholder.typicode.com/posts";

  // var _postsJson = [];

  // void fetchPosts() async {
  //   final response = await get(Uri.parse(url));
  //   final jsondata = jsonDecode(response.body);
  //   setState(() {
  //     _postsJson = jsondata;
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  // fetchPosts();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("To do List"),
          centerTitle: true,
          leading: const Icon(Icons.login),
          backgroundColor: Colors.blue[300],
        ),
        backgroundColor: Colors.grey[200],
        body: const InputField());
  }
}
