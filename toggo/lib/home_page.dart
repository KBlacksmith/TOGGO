import 'package:flutter/material.dart';
import 'package:toggo/home_page_tabs/create_event.dart';
import 'package:toggo/home_page_tabs/explore.dart';
import 'package:toggo/home_page_tabs/search.dart';
import 'package:toggo/globals.dart' as globals;

class HomePage extends StatefulWidget {
  static String id = "homepage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.orange.shade50,
          appBar: AppBar(
            title: Text(
              "TOGGO",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            backgroundColor: Colors.green.shade200,
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Text(
                    "Menu",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.shade200,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_circle,
                  ),
                  title: Text("Profile"),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, "profile");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, "settings");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text("Log Out"),
                  onTap: () {
                    globals.usernameLogged = "";
                    globals.passwordLogged = "";
                    Navigator.pushReplacementNamed(context, "login");
                  },
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.orange,
            child: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.explore,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.search),
                ),
                Tab(
                  icon: Icon(
                    Icons.add_circle,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Explore(),
              Search(),
              CreateEvent(),
            ],
          ),
        ),
      ),
    );
  }
}
