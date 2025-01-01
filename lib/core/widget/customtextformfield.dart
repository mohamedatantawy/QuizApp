import 'package:firstproject/core/constant/constant.dart';
import 'package:flutter/material.dart';

class Customtextformfield extends StatelessWidget {
  const Customtextformfield({super.key, this.onsaved, this.submit, this.hint});

  final void Function(String?)? onsaved;
  final void Function(String)? submit;
  final String? hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: submit,
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required ';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
          // filled: true,
          // fillColor: Colors.blue[100],
          hintText: hint,
         
          border: outlineborder(),
          enabledBorder: outlineborder(),
          focusedBorder: outlineborder()),
    );
  }

  OutlineInputBorder outlineborder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: kprimarycolor,
      ),
    );
  }
}
