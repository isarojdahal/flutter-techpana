import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_episode9/full_screen_img.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FullScreenImg(
                          "https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg"))),
              child: Image.network(
                  "https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg")),
        ));
  }
}
