import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_training/constants.dart';
import 'package:notes_app_training/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes() {
    // emit(NotesLoading());

    var noteBok = Hive.box<NoteModel>(kNotesBox);
    // await noteBok.add(note);
    notes = noteBok.values.toList();
    // emit(NotesSuccess(notes));
  }
}
