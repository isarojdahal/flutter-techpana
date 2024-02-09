import 'package:flutter/material.dart';
import 'package:flutter_second_project/routes.dart';
import 'package:flutter_second_project/screens/homepage_screen.dart';
import 'package:flutter_second_project/screens/screen_not_found.dart';
import 'package:flutter_second_project/screens/setting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: "Roboto"),
      debugShowCheckedModeBanner: false,
      // home: const MyHomePage(title: 'Flutter App'),
      initialRoute: "/",
      routes: routes,
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => ScreenNotFound()),
    );
  }
}
