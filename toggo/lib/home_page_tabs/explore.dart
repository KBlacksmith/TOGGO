import 'package:flutter/material.dart';

var pics = ["roller", "yoga", "skate", "frisb", "run", "hike"];
var names = ["Karen", "Tadeo", "Fiorella", "Christopher", "Ramiro", "Kimberly"];

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<String> img = [
    "Bicycle",
    "Frisbee",
    "Ice-Skating",
    "Roller-Skating",
    "Running",
    "Skateboarding",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              "Near You",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            color: Colors.white70,
            height: 225,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (var i = 0; i < 6; i++)
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Organizer: " + names[i],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              color: Colors.orange.shade100,
                              child: Flexible(
                                child: Image(
                                  image: AssetImage(
                                      'lib/images/' + pics[i] + '.jpeg'),
                                  width: 200,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Activities",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Container(
            color: Colors.white70,
            height: 225,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (var i in img)
                  Row(
                    children: [
                      SizedBox(width: 10.0),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              i,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4.0),
                            color: Colors.orange.shade100,
                            child: Flexible(
                              child: Image(
                                image: AssetImage('lib/images/' + i + '.jpeg'),
                                width: 160,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                SizedBox(width: 10.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
