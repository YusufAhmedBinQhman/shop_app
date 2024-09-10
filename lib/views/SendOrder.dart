import 'package:shop_app1/viewmodels/sendOrderVM.dart';
import 'package:flutter/material.dart';

class SendOrder extends StatefulWidget {
  const SendOrder({super.key});

  @override
  State<SendOrder> createState() => _SendOrderState();
}

class _SendOrderState extends State<SendOrder> {
  GlobalKey<FormState> frmky = GlobalKey();
  String? selectTime;
  String? payment = "عند الاستلام";
  SendOrderVM sendOrderVM = SendOrderVM();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Send Order"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Form(
            key: frmky,
            child: Column(
              children: [
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.name,
                  validator: (x) => checkValidate(x),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    hintText: "Enter Your Name",
                    // enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all())
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  validator: (x) => checkValidPhone(x),
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    hintText: "example: 777111333",
                    //  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all())
                  ),
                ),
                SizedBox(height: 20),
                // DropdownButton(
                //     items: sendOrderVM
                //         .loadTime()
                //         .map((t) => DropdownMenuItem(child: Text(t.name)))
                //         .toList(),
                //     onChanged: (x) {
                //       selectTime = x;
                //     }),
                Text(
                  "طريقة الدفع",
                  style: TextStyle(fontSize: 20),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("عند الاستلام", style: TextStyle(fontSize: 20)),
                    Radio(
                        value: "عند الاستلام",
                        groupValue: payment,
                        onChanged: (x) {
                          payment = x;
                          setState(() {});
                        }),
                    SizedBox(width: 40)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("الكريمي", style: TextStyle(fontSize: 20)),
                    Radio(
                        value: "الكريمي",
                        groupValue: payment,
                        onChanged: (x) {
                          payment = x;
                          setState(() {});
                        }),
                    SizedBox(width: 40)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("العمقي", style: TextStyle(fontSize: 20)),
                    Radio(
                        value: "العمقي",
                        groupValue: payment,
                        onChanged: (x) {
                          payment = x;
                          setState(() {});
                        }),
                    SizedBox(width: 40)
                  ],
                ),
                TextField(),
                MaterialButton(
                    child: Text("Save"),
                    onPressed: () {
                      if (frmky.currentState!.validate()) {
                        frmky.currentState!.save();
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  checkValidate(String? x) {
    List<String> lenWord = x!.split(" ");
    if ((x.isEmpty || lenWord.length < 3)) {
      return Text(
          "Please Enter correct name.. Your name must be least 3 word ");
    } else
      return null;
  }

  checkValidPhone(String? x) {
    if ((x!.isEmpty ||
        x.length < 10 ||
        x != x.startsWith("71") ||
        x != x.startsWith("77") ||
        x != x.startsWith("78"))) {
      return Text(
          "Please Enter correct Phone Number.. Your Phone must be begin (77 Or 78 Or 71) ");
    } else
      return null;
  }
}
