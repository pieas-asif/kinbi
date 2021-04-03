import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image(
          image: AssetImage("images/Kinbi.png"),
        ),
        title: Text(
          "Kinbi?",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              print("logout");
            },
            color: Colors.black,
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Rafin will post something juicy here",
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: "Messages",
            icon: Icon(Icons.message_outlined),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("post");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
