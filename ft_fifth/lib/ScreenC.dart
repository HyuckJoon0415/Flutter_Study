import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[200],
        title: Text("ScreenC"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Screen C !!!"),
      ),
    );
  }
}
