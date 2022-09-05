import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class My_Second_screen extends StatefulWidget {
  const My_Second_screen({super.key});

  @override
  State<My_Second_screen> createState() => _My_Second_screenState();
}

class _My_Second_screenState extends State<My_Second_screen> {
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
                "Hello from 2st",
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
                  label: Text("Go To Home"))
            ],
          ),
        ),
      ),
    ));
  }
}
