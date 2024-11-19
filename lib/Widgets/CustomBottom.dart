import 'package:flutter/material.dart';
import 'package:notes_app/Consts.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          color: KPrimaryColor, borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
