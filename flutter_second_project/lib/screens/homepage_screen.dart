import 'package:flutter/material.dart';
import 'setting_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var homepageScreen = Column(
      children: [
        GestureDetector(
            child: const Text("Homepage Screen"),
            onTap: () => Navigator.pushNamed(context, "/settings")),
      ],
    );

    List<Widget> screenList = [homepageScreen, const SettingsScreen()];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SettingsScreen())),
              icon: const Icon(Icons.settings))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });

            debugPrint("currentIndex : $_currentIndex");
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings")
          ]),
      body: screenList[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
