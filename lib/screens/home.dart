import 'package:flutter/material.dart';
import 'package:kinbi/widgets/posts.dart';

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
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        children: [
          Post(),
          Post(),
          SizedBox(
            height: 50,
          ),
          Text(
            " END OF LISTINGS ",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
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
