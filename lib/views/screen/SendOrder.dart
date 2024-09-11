import 'package:shop_app1/viewmodels/products_vm.dart';
import 'package:shop_app1/viewmodels/sendOrderVM.dart';
import 'package:flutter/material.dart';
import 'package:shop_app1/views/widget/AppButton.dart';
import 'package:shop_app1/views/widget/text_form.dart';
import 'package:shop_app1/views/widget/txtStyWid.dart';

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
        title: TxtStyWid(text: "Send Order"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          child: Form(
            key: frmky,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 20),
                TextFormW(
                  sufIcon: Icon(Icons.account_box),
                  KeyBType: TextInputType.name,
                  validateInput: (x) => checkValidName(x),
                  labelText: ":اسم المستلم",
                  hintText: ":اكتب اسم المستلم",
                ),
                SizedBox(height: 20),
                TextFormW(
                  validateInput: (x) => checkValidPhone(x),
                  KeyBType: TextInputType.phone,
                  maxLen: 9,
                  sufIcon: Icon(Icons.account_box),
                  labelText: ":رقم هاتف المستلم",
                  hintText: "مثال: 777111222",
                ),
                SizedBox(height: 20),
                DropdownButton(
                    borderRadius: BorderRadius.circular(20),
                    dropdownColor: Color.fromARGB(213, 86, 177, 251),
                    alignment: Alignment.center,
                    hint: TxtStyWid(text: "وقت الارسال"),
                    value: selectTime,
                    items: sendOrderVM
                        .loadTime()
                        .map((t) => DropdownMenuItem(
                              child: Text(t.name),
                              value: t.value,
                            ))
                        .toList(),
                    onChanged: (x) {
                      selectTime = x;
                      setState(() {});
                    }),
                SizedBox(height: 20),
                Text(
                  ":طريقة الدفع",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TxtStyWid(text: "عند الاستلام"),
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
                    TxtStyWid(text: "الكريمي"),
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
                    TxtStyWid(text: "العمقي"),
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
                TextField(
                  textAlign: TextAlign.right,
                  maxLines: 10,
                  minLines: 5,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "...ملاحظات",
                      hintStyle: TextStyle(fontSize: 20)),
                ),
                AppButton(
                    text: "Save",
                    event: () {
                      if (frmky.currentState!.validate()) {
                        Navigator.pushNamed(context, "/sucOrder",
                            arguments: ProductsVM.cartItems);
                      }
                    })
              ],
            ),
          ),
        ),
      ),
    ));
  }

  checkValidName(String? x) {
    List<String> lenWord = x!.split(" ");
    if ((x.isEmpty || lenWord.length < 3)) {
      return "Your name must be least 3 word ";
    } else
      return null;
  }

  checkValidPhone(String? x) {
    if ((x!.isEmpty || x.length != 9)) {
      return "Please Enter correct Phone Number (9 Digit)..";
    } else if (!x.startsWith("71") &&
        !x.startsWith("77") &&
        !x.startsWith("73")) {
      return " Your Phone must be begin (77 Or 78 Or 71) ";
    } else
      return null;
  }
}
