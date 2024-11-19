import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/Consts.dart';
import 'package:notes_app/views/nots_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(knoteBox);

  runApp(const NotsApp());
}

class NotsApp extends StatelessWidget {
  const NotsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotsView());
  }
}
