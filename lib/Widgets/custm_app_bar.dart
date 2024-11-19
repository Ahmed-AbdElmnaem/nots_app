import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custm_search_icon.dart';

class CustmAppBar extends StatelessWidget {
  const CustmAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        Spacer(),
        CustmSearchIcon(
          icon: icon,
        )
      ],
    );
  }
}
