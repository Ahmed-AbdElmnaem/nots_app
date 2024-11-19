import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custm_search_icon.dart';

class CustmAppBar extends StatelessWidget {
  const CustmAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        Spacer(),
        CustmSearchIcon()
      ],
    );
  }
}
