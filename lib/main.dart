import 'package:flutter/material.dart';

import 'package:myapp/screens/Firstscreen.dart';
import 'package:myapp/screens/second_screen.dart';

void main() {
  runApp(MaterialApp(home: const Mohammad()));
}

class Mohammad extends StatelessWidget {
  const Mohammad({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return My_first_Screen();
                      },
                    ));
                  });
                },
                icon: Icon(Icons.pages),
                label: Text("Go To Page # 1")),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return My_Second_screen();
                      },
                    ));
                  });
                },
                icon: Icon(Icons.pages),
                label: Text("Go To Page # 2")),
          ],
        ),
      ),
    );
  }
}
