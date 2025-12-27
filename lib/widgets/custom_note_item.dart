import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_training/cuibits/notes_cubit/notes_cubit.dart';
import 'package:notes_app_training/models/note_model.dart';
import 'package:notes_app_training/view/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    // return
    // GestureDetector(
    //   onTap: () {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) {
    //         return EditNoteView(
    //           note: note,
    //         );
    //       }),
    //     );
    //   },
    //   child:
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(note.color),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            leading: Checkbox(
              value: note.isCompleted,
              onChanged: (value) {
                note.isCompleted = value!;
                note.save(); // 👈 حفظ في Hive
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              },
            ),
            title: Text(
              note.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                decoration: note.isCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                decorationColor: Colors.black,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                note.subTitle,
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 18,
                  decoration: note.isCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  decorationColor: Colors.black,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                note.delete();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              note.date,
              style: TextStyle(
                color: Colors.black.withOpacity(.4),
              ),
            ),
          ),
        ],
      ),
    );
    // );
  }
}
