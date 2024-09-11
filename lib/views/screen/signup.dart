import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shop_app1/views/widget/txtStyWid.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  String? gender;
  bool isAccept = false;
  bool isAgree = false;
  String? pathOfImg;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Form(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              InkWell(
                onTap: () async {
                  showDialog(
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                            content: SizedBox(
                                width: 200,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        child: Icon(Icons.camera),
                                        onTap: () async {
                                          pathOfImg = await pickImage(
                                              ImageSource.camera);
                                          setState(() {});
                                        },
                                      ),
                                      InkWell(
                                        child: Icon(Icons.folder_copy),
                                        onTap: () async {
                                          pathOfImg = await pickImage(
                                              ImageSource.gallery);
                                          setState(() {});
                                        },
                                      )
                                    ])));
                      });
                  //  pathOfImg = await pickImage(ImageSource.camera);
                  setState(() {});
                },
                child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: pathOfImg == null
                                ? AssetImage("assets/images/splash2.jpg")
                                : FileImage(File(pathOfImg!)),
                            fit: BoxFit.fill),
                        color: Colors.red,
                        border: Border.all(color: Colors.black, width: 10))),
              ),
              // Container(
              //   height: MediaQuery.of(context).size.height,
              //   child:
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box),
                  hintText: "name",
                  //  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all())
                ),
              ),

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
                  TxtStyWid(text: "male"),
                  Radio(
                      value: "FeMale",
                      groupValue: gender,
                      onChanged: (x) {
                        gender = x;
                        setState(() {});
                      }),
                  TxtStyWid(text: "FeMale"),
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
                  TxtStyWid(text: "Accept"),
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
                  TxtStyWid(text: "I read and I Agree... "),
                ],
              ),
            ]),
          ),
        ),
      ),
    ));
  }

  Future<String?> pickImage(ImageSource Source) async {
    ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(source: Source);
    return image?.path;
  }
}
