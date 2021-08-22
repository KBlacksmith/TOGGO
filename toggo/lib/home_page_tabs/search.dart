import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  static String id = "search";
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String? dropDownCurrent = "Bicycle";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Search: ",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Choose a category: ",
                style: TextStyle(fontSize: 20),
              ),
              Container(
                width: 200,
                child: DropdownButtonFormField(
                  items: <String>[
                    "Bicycle",
                    "Frisbee",
                    "Ice-Skating",
                    "Roller-Skating",
                    "Running",
                    "Skateboarding",
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  value: dropDownCurrent,
                  icon: Icon(Icons.arrow_drop_down),
                  onChanged: (String? valueIn) {
                    setState(() {
                      dropDownCurrent = valueIn;
                    });
                  },
                ),
              ),
            ],
          ),
          Extra(),
        ],
      ),
    );
  }
}

class Extra extends StatefulWidget {
  const Extra({Key? key}) : super(key: key);

  @override
  _ExtraState createState() => _ExtraState();
}

class _ExtraState extends State<Extra> {
  @override
  var num = [];
  Widget build(BuildContext context) {
    if (num.length == 0) {
      return Container(
        child: Text(
          "There are no activities available",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      );
    } else {
      return ListView(
        children: [
          for (var i in num)
            Container(
              color: Colors.red,
              width: 200,
              height: 200,
            )
        ],
      );
    }
  }
}
