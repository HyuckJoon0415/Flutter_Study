import 'package:flutter/material.dart';
import 'dice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        title: Text("Log in"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              Center(
                child: Image(
                  image: AssetImage("Image/chef.gif"),
                  width: 200,
                  height: 300,
                ),
              ),
              Form(
                child: Theme(
                  data: ThemeData(
                      inputDecorationTheme: InputDecorationTheme(
                          labelStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                  ))),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Column(
                      children: [
                        TextField(
                          controller: controller1,
                          decoration: InputDecoration(
                            labelText: "Enter Email",
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextField(
                          controller: controller2,
                          decoration: InputDecoration(
                            labelText: "Enter Password",
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (controller1.text == "aaa" && controller2.text == "1234") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Dice()),
                    );
                  } else if (controller1.text != "aaa" &&
                      controller2.text == "1234") {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text(
                          "이메일 다시 입력.",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  } else if (controller1.text == "aaa" &&
                      controller2.text != "1234") {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text(
                          "비번 다시 입력",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text(
                          "다 틀림. 다 다시 입력",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.lightBlue.shade50),
                ),
                child: Icon(Icons.arrow_forward, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
