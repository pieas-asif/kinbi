import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  static const String id = "registration_page";
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                Image(
                  image: AssetImage("images/Kinbi.png"),
                  width: 200,
                ),
                Text(
                  "Welcome to Kinbi?",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Please fill up the form and submit to create a brand new account on \"Kinbi?\". The best platform to sell your stuff online.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Full Name",
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.alternate_email),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    prefixIcon: Icon(Icons.vpn_key_outlined),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password Again",
                    prefixIcon: Icon(Icons.vpn_key_outlined),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Hi");
                  },
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 100,
                      ),
                      child: Text("Sign Up")),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "By signing up, you agree to our terms and condition about data policy and privacy. ",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text("Back"),
            icon: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          BottomNavigationBarItem(
            title: Text("Terms"),
            icon: IconButton(
              icon: Icon(Icons.description_outlined),
              //   This program is free software: you can redistribute it and/or modify
              // it under the terms of the GNU General Public License as published by
              //   the Free Software Foundation, either version 3 of the License, or
              //   (at your option) any later version.
              //
              // This program is distributed in the hope that it will be useful,
              //   but WITHOUT ANY WARRANTY; without even the implied warranty of
              // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
              // GNU General Public License for more details.
              //
              // You should have received a copy of the GNU General Public License
              // along with this program.  If not, see <https://www.gnu.org/licenses/>.
              onPressed: null,
            ),
          ),
          BottomNavigationBarItem(
            title: Text("Help"),
            icon: IconButton(
              icon: Icon(Icons.help_outlined),
              onPressed: null,
            ),
          ),
        ],
      ),
    );
  }
}
