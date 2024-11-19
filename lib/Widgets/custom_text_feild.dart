import 'package:flutter/material.dart';
import 'package:notes_app/Consts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.maxLines = 1, this.onseved});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onseved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onseved,
      maxLines: maxLines,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter some text';
        }
        return null;
      },
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: KPrimaryColor),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
