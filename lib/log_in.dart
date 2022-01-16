import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({ Key? key }) : super(key: key);
  static String id = "login";
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
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
                //Flexible(
                  //child: Image(image: ,)
                //),
                const Flexible(
                  child: Image(
                    image: AssetImage('lib/images/toggo.jpeg'),
                  ),
                ),
                const SizedBox(height: 15.0,),
                const Text(
                  "TOGGO",
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
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: "example@email.com",
                      labelText: "E-Mail",
                    ),
                    maxLength: 50,
                  ),
                ),
                const SizedBox(height: 15.0,),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: "Password",
                    ),
                    maxLength: 50,
                  ),
                ),
                const SizedBox(height: 20.0,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, "home");
                  }, 
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40.0,
                    ),
                    child: const Text("Log In"),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    )
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    TextButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, "signup");
                      }, 
                      child: const Text("Sign Up"),
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