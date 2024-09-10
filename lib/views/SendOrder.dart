import 'package:shop_app1/viewmodels/products_vm.dart';
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
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          child: Form(
            key: frmky,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 20),
                TextFormField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.name,
                  validator: (x) => checkValidName(x),
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.account_box),
                      labelText: ":اسم المستلم",
                      labelStyle: TextStyle(fontSize: 18),
                      hintText: ":اكتب اسم المستلم",
                      hintStyle: TextStyle(fontSize: 18),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
                SizedBox(height: 20),
                TextFormField(
                  textAlign: TextAlign.right,
                  validator: (x) => checkValidPhone(x),
                  keyboardType: TextInputType.phone,
                  maxLength: 9,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_box),
                      labelText: ":رقم هاتف المستلم",
                      labelStyle: TextStyle(fontSize: 18),
                      hintText: "مثال: 777111222",
                      hintStyle: TextStyle(fontSize: 18),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
                SizedBox(height: 20),
                DropdownButton(
                    borderRadius: BorderRadius.circular(20),
                    dropdownColor: Color.fromARGB(213, 86, 177, 251),
                    alignment: Alignment.center,
                    hint: Text(
                      "وقت الارسال",
                      style: TextStyle(fontSize: 18),
                    ),
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
                TextField(
                  textAlign: TextAlign.right,
                  maxLines: 10,
                  minLines: 5,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "...ملاحظات",
                      hintStyle: TextStyle(fontSize: 20)),
                ),
                MaterialButton(
                    color: Colors.blue,
                    child: Text("Save",
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    onPressed: () {
                      if (frmky.currentState!.validate()) {
                        Navigator.pushNamed(context, "/sucOrder",
                            arguments: ProductsVM.cartItems);
                      }
                    }),
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
