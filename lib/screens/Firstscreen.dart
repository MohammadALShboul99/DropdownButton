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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
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
                  }))
            ],
          ),
        ),
      ),
    ));
  }
}
