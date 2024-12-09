import 'package:flutter/material.dart';
import 'package:notes_app_training/view/notes_view.dart';

void main() {
  runApp(const NotesAppTraining());
}

class NotesAppTraining extends StatelessWidget {
  const NotesAppTraining({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
