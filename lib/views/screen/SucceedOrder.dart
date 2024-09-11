import 'package:flutter/material.dart';

class SucceedOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Succeed Order"),
        ),
        body: Center(
            child: Text(
          " ....تم إرسال طلبك بنجاح",
          style: TextStyle(fontSize: 24),
        )),
      ),
    );
    ;
  }
}
