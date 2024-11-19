import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custm_notes_item.dart';

class Noteslistview extends StatelessWidget {
  const Noteslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: NoteItem(),
        );
      },
    );
  }
}
