import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/add_note_bottomsheet.dart';
import 'package:notes_app/Widgets/notes_view_body.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) => const Custmbottomsheet());
          },
          child: const Icon(Icons.add)),
      body: const NotsviewsBody(),
    );
  }
}
