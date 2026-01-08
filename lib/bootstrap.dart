import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_training/models/note_model.dart';
import 'package:notes_app_training/simple_bloc_observer.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_training/constants.dart';

// Future<void> bootstrap({
//   required Widget app,
// }) async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Hive.initFlutter();
//   Bloc.observer = SimpleBlocObserver();
//   Hive.registerAdapter(NoteModelAdapter());
//   await Hive.openBox<NoteModel>(kNotesBox);
//   runApp(app);
// }

Future<void> bootstrap({
  required Widget app,
  VoidCallback? beforeRunApp,
}) async {
  WidgetsFlutterBinding.ensureInitialized();

  beforeRunApp?.call();

  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(app);
}
