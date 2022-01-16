import 'package:flutter/material.dart';
import 'package:toggo/home.dart';
import 'package:toggo/log_in.dart';
import 'package:toggo/sign_up.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LogIn.id,
      routes: {
        Home.id: (context) => const Home(),
        LogIn.id: (context) => const LogIn(),
        SignUp.id: (context) => const SignUp(),
      },
    );
  }
}