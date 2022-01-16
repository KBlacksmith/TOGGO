import 'package:flutter/material.dart';
//import 'dart:core';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);
  static String id = "signup";
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Flexible(
                  child: Image(
                    image: AssetImage('lib/images/toggo.jpeg'),
                  ),
                ),
                const SizedBox(height: 15.0,),
                const Text(
                  "TOGOO",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: TextFormField(
                    //controller:
                    //keyboardType
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: "example@email.com",
                      labelText: "E-Mail",
                    ),
                    validator: (String? value){
                      RegExp exp = RegExp("[a-z0-9.]+@[a-z]+.[a-z]{2,3}");
                      if (value == null || value.isEmpty){
                        return "Please enter an e-mail address";
                      }
                      else if(
                        exp.stringMatch(value) == null || exp.stringMatch(value) != value
                      ){
                        return "Please enter a valid e-mail";
                      }
                      return null;
                    },
                  ),
                ),
                //Sign Up
                ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      Navigator.pushReplacementNamed(context, "home");
                    }
                    //Navigator.pushReplacementNamed(context, "home");
                  }, 
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40.0,
                    ),
                    child: const Text("Sign Up"),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)
                    )
                  ),
                ),
                const SizedBox(height: 20.0,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}