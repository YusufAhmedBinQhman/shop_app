import 'package:flutter/material.dart';

class TxtStyWid extends StatelessWidget {
  TxtStyWid({super.key, required this.text, this.colorW});
  late String text;
  Color? colorW;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: colorW),
    );
  }
}
