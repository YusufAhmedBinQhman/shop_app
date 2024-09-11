import 'package:flutter/material.dart';

class DemoStatefulScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DemoStateful();
  }
}

class DemoStateful extends State<DemoStatefulScreen> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            x++;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
          child: Text(
        "$x",
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
      )),
    );
  }
}
