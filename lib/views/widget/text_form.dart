import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormW extends StatelessWidget {
  TextFormW(
      {super.key,
      this.labelText,
      this.hintText,
      this.sufIcon,
      this.validateInput,
      this.maxLen,
      this.textAlign = TextAlign.right,
      this.KeyBType = TextInputType.name});
  String? labelText;
  String? hintText;
  FormFieldValidator<String?>? validateInput;
  TextAlign textAlign = TextAlign.right;
  TextInputType KeyBType = TextInputType.name;
  Widget? sufIcon;
  int? maxLen;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: TextFormField(
          textAlign: textAlign,
          keyboardType: KeyBType,
          validator: validateInput,
          maxLength: maxLen,
          decoration: InputDecoration(
              suffixIcon: sufIcon,
              labelText: labelText,
              labelStyle: TextStyle(fontSize: 18),
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 18),
              enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
        ));
  }
}
