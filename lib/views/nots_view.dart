import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/notes_view_body.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotsviewsBody(),
    );
  }
}
