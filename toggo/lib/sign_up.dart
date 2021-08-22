import 'package:flutter/material.dart';
import 'dart:core';
import 'package:toggo/globals.dart' as globals;
import 'package:toggo/storage.dart';

class SignUp extends StatefulWidget {
  static String id = "sign-up";
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final userController = TextEditingController();
  final pwController = TextEditingController();

  @override
  void dispose() {
    userController.dispose();
    pwController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Storage writer = new Storage();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Image.asset(name)
                Flexible(
                    child: Image(
                  image: AssetImage('lib/images/toggo.jpeg'),
                )),
                SizedBox(height: 15.0),
                Text(
                  "TOGGO",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: TextFormField(
                    controller: userController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: "example@email.com",
                      labelText: "E-Mail",
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter some text";
                      } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                        return "Please enter a valid e-mail";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: TextFormField(
                    controller: pwController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: "Password",
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter some text";
                      }
                      return null;
                    },
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                //Log In
                ElevatedButton(
                  onPressed: () {
                    writer.findUser(userController.text).then((found) {
                      if (_formKey.currentState!.validate() && found == false) {
                        globals.usernameLogged = userController.text;
                        globals.passwordLogged = pwController.text;
                        writer.writeData(
                            userController.text, pwController.text);
                        Navigator.pushReplacementNamed(context, "homepage");
                      }
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.0,
                    ),
                    child: Text("Sign-Up"),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already Have an Account? "),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "login");
                      },
                      child: Text("Log In"),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
