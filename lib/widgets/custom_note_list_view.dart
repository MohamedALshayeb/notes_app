import 'package:flutter/material.dart';
import 'package:notes_app_training/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: NoteItem(),
      );
    });
  }
}