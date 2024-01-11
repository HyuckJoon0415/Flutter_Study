import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: Text("ScreenB"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Screen B !!!"),
      ),
    );
  }
}
