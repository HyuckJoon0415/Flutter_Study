import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Third App",
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
        title: Text("Appbar Icon Menu"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              onDetailsPressed: () {},
              accountEmail: Text("fox@fox.com"),
              accountName: Text("Arctic Fox"),
              decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/fox2.png"),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/fox1.png"),
                )
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text("Home"),
              trailing: Icon(Icons.add),
              onTap: () {},
            ),
            ListTile(
              trailing: Icon(Icons.add),
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              trailing: Icon(Icons.add),
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text("Q&A"),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
