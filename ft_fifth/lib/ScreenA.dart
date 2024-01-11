import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text("ScreenA"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/b');
              },
              child: Text("Go to ScreenB"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/c');
              },
              child: Text("Go to ScreenC"),
            ),
          ],
        ),
      ),
    );
  }
}
