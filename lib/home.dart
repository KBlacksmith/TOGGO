import 'package:flutter/material.dart';
import 'package:toggo/tabs/explore.dart';
import 'package:toggo/tabs/search.dart';
import 'package:toggo/tabs/create_event.dart';

class Home extends StatefulWidget {
  static String id = "home";
  const Home({ Key? key }) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.orange.shade50,
          appBar: AppBar(
            title: const Text(
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
                  child: const Text(
                    "Menu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.shade200
                  ),
                ),
                const ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  //onTap(){},
                )
                ,
                const ListTile(
                  leading: Icon(
                    Icons.account_circle,
                  ),
                  title: Text("Profile"),
                  //onTap: (){},
                ),
                const ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Log Out"),
                  //onTap: (){}
                )
              ],
            ),
          ),
          bottomNavigationBar: const BottomAppBar(
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
                  icon: Icon(Icons.add_circle),
                )
              ],
            ),
          ),
          body: const TabBarView(children: [
            Explore(),
            Search(),
            CreateEvent(),
          ],),
        ),
      ),
    );
  }
}