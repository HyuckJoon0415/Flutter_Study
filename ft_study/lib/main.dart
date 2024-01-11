import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("First App"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(("Hello World~!")),
            Text(("Hello World~!")),
            Text(("Hello World~!")),
          ],
        ),
      ),
    );
  }
}
