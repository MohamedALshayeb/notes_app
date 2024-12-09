import 'package:flutter/material.dart';
import 'package:notes_app_training/constants.dart';
import 'package:notes_app_training/widgets/custom_add_note_show_modal_bottom_sheet.dart';
// import 'package:notes_app_training/widgets/custom_app_bar.dart';
// import 'package:notes_app_training/widgets/custom_note_list_view.dart';
import 'package:notes_app_training/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NoteViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            context: context,
            builder: (context) {
              return const AddNoteShowModalBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
