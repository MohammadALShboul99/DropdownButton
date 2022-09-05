import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class My_first_Screen extends StatefulWidget {
  const My_first_Screen({super.key});

  @override
  State<My_first_Screen> createState() => _My_first_ScreenState();
}

class _My_first_ScreenState extends State<My_first_Screen> {
  List MyItems = ["Dell", "Toshipa", "Sony", "Asus", "Hp", "Acer"];
  String selecteditem = "Dell";
  bool myvalue = false;
  bool myval = false;
  String groubby = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello from 1st",
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context, MaterialPageRoute(
                        builder: (context) {
                          return Mohammad();
                        },
                      ));
                    });
                  },
                  icon: Icon(Icons.home),
                  label: Text("Go To Home"),
                ),
                DropdownButton(
                    hint: Text("Please Select from This"),
                    value: selecteditem,
                    items: MyItems.map((e) => DropdownMenuItem(
                          child: Text("$e"),
                          value: e,
                        )).toList(),
                    onChanged: ((val) {
                      setState(() {
                        selecteditem = val.toString();
                      });
                    })),
                CheckboxListTile(
                  value: myvalue,
                  title: Text("RAM 16GB +8GB"),
                  onChanged: (val) {
                    setState(() {
                      myvalue = val!;
                    });
                  },
                ),
                CheckboxListTile(
                  value: myval,
                  title: Text("SSD 500 GB"),
                  onChanged: (val) {
                    setState(() {
                      myval = val!;
                    });
                  },
                ),
                Text(
                  "Select The Color",
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
                ),
                RadioListTile(
                  title: Text("Color White"),
                  value: "Laptop",
                  groupValue: groubby,
                  onChanged: (val) {
                    setState(() {
                      groubby = val.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Color Black"),
                  value: "Lap",
                  groupValue: groubby,
                  onChanged: (val) {
                    setState(() {
                      groubby = val.toString();
                    });
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
