import 'package:flutter/material.dart';

DateTime day = DateTime.now();

class CreateEvent extends StatefulWidget {
  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  String? dropDownCurrent = "Bicycle";
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Create your own event",
            style: TextStyle(fontSize: 30),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Location: ",
                style: TextStyle(fontSize: 20),
              ),
              Container(
                width: 200,
                child: TextFormField(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Date: ",
                style: TextStyle(fontSize: 20),
              ),
              Text("${day.day}/${day.month}/${day.year}"),
              ElevatedButton(
                onPressed: () {
                  _selectDate(context);
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.calendar_today),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Submit",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _selectDate(BuildContext context) async {
    DateTime now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now,
      lastDate: DateTime(2022),
    );
    if (picked != null && picked != now) {
      setState(() {
        now = picked;
        day = picked;
      });
    }
  }
}
