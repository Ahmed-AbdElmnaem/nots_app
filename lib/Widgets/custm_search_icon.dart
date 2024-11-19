import 'package:flutter/material.dart';

class CustmSearchIcon extends StatelessWidget {
  const CustmSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white.withOpacity(0.1),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          Icons.search,
        ),
      ),
    );
  }
}
