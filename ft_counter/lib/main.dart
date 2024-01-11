import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: Text("Counter"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "-- Counter --",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "$counter",
                style: TextStyle(fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      icon: Icon(Icons.add)),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          counter = 0;
                        });
                      },
                      child: Text(
                        "Reset",
                        style: TextStyle(fontSize: 20),
                      )),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          counter--;
                        });
                      },
                      icon: Icon(Icons.remove)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
