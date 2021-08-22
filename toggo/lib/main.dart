import 'package:flutter/material.dart';
import 'package:toggo/log_in.dart';
import 'package:toggo/home_page.dart';
import 'package:toggo/profile.dart';
import 'package:toggo/settings.dart';
import 'package:toggo/home_page_tabs/search.dart';
import 'package:toggo/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        Login.id: (context) => Login(),
        HomePage.id: (context) => HomePage(),
        //Profile.id: (context) => Profile(),
        //Settings.id: (context) => Settings(),
        SignUp.id: (context) => SignUp(),
      },
    );
  }
}
