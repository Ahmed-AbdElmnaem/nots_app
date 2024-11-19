import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_text_feild.dart';

class Custmbottomsheet extends StatelessWidget {
  const Custmbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Add a note',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const CustomTextField(
            hintText: 'Title',
          ),
          SizedBox(
            height: 25,
          ),
          CustomTextField(hintText: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
