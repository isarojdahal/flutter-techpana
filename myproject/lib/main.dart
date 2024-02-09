import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int score = 1;

  @override
  Widget build(BuildContext context) {
    debugPrint("I am executed");

    return Scaffold(
        appBar: AppBar(title: const Text("Flutter Homepage")),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: () {
            setState(() {
              score = score + 1;
            });

            debugPrint("score is : $score");
          },
        ),
        body: Center(
            child: Card(
                child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Text("Score :  $score"),
        ))));
  }
}
