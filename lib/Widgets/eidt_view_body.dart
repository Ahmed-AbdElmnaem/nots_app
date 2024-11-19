import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custm_app_bar.dart';
import 'package:notes_app/Widgets/custom_text_feild.dart';

class EidtViewBody extends StatelessWidget {
  const EidtViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustmAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
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
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
