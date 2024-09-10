import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  String? gender;
  bool isAccept = false;
  bool isAgree = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage("assets/images/splash2.jpg"),
                        fit: BoxFit.fill),
                    color: Colors.red,
                    border: Border.all(color: Colors.black, width: 10))),
            // Container(
            //   height: MediaQuery.of(context).size.height,
            //   child:
            Form(
                child: TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_box),
                hintText: "name",
                //  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all())
              ),
            )),

            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_box),
                hintText: "example: email@gmaol.com",
                //  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all())
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_box),
                hintText: "Password:",
                //  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all())
              ),
            ),
            Row(
              children: [
                Radio(
                    value: "male",
                    groupValue: gender,
                    onChanged: (x) {
                      gender = x;
                      setState(() {});
                    }),
                Text("male"),
                Radio(
                    value: "FeMale",
                    groupValue: gender,
                    onChanged: (x) {
                      gender = x;
                      setState(() {});
                    }),
                Text("FeMale"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: isAccept,
                    onChanged: (x) {
                      isAccept = x!;
                      setState(() {});
                    }),
                Text("Accept "),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: isAgree,
                    onChanged: (x) {
                      isAgree = x!;
                      setState(() {});
                    }),
                Text("I read and I Agree... "),
              ],
            ),
         
          ]),
        ),
      ),
    ));
  }
}
