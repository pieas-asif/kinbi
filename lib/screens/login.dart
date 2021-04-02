import 'package:flutter/material.dart';
import 'package:kinbi/screens/registration.dart';

class LoginPage extends StatefulWidget {
  static const String id = "login_page";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 20,
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
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Enter Email & Password to Continue",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: TextField(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: TextField(
                      obscureText: !_isVisible,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key),
                        suffixIcon: IconButton(
                            icon: _isVisible
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            }),
                        hintText: "Password",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                      ),
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
                      child: Text("LOGIN"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RegistrationPage.id);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
