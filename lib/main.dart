import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_training/constants.dart';
import 'package:notes_app_training/cuibits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_training/models/note_model.dart';
import 'package:notes_app_training/simple_bloc_observer.dart';
import 'package:notes_app_training/view/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

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
