import 'package:flutter/material.dart';
import 'globals.dart' as globals;

class Profile extends StatefulWidget {
  static String id = "profile";

  @override
  _ProfileState createState() => _ProfileState();
}

IconData myIcon = Icons.visibility;

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacementNamed(context, "homepage");
            },
          ),
          backgroundColor: Colors.green.shade200,
          title: Text("Profile"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "E-Mail",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    globals.usernameLogged,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
