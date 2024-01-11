import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void toastButton() {
    Fluttertoast.showToast(msg: "토스트 버튼", gravity: ToastGravity.CENTER);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Message Bar",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Message"),
          centerTitle: true,
        ),
        body: Builder(builder: (ctx) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[200])),
                onPressed: () {
                  toastButton();
                },
                child: Text(
                  "Toast Message",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.red[200])),
                  onPressed: () {
                    ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
                      content: Text(
                        "스낵바",
                        textAlign: TextAlign.center,
                      ),
                      duration: Duration(seconds: 1),
                    ));
                  },
                  child: Text(
                    "Snack Bar",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          );
        }),
      ),
    );
  }
}
