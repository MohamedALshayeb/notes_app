import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_training/constants.dart';
import 'package:notes_app_training/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = Colors.blue;
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var noteBok = Hive.box<NoteModel>(kNotesBox);
      await noteBok.add(note);
      emit(AddNotesuccess());
    } catch (e) {
      emit(AddNotefailure(e.toString()));
    }
  }
}
