import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton({super.key, required this.text, required this.event});
  late String text;
  late VoidCallback event;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
          color: Colors.blue,
          onPressed: event,
          child: Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
    );
  }
}
