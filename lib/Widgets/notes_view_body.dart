import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custm_app_bar.dart';
import 'package:notes_app/Widgets/listview_notesItem.dart';

class NotsviewsBody extends StatelessWidget {
  const NotsviewsBody({super.key});

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
            title: 'Notes',
            icon: Icons.search,
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(child: Noteslistview()),
        ],
      ),
    );
  }
}
