import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes_app_training/app.dart';
import 'package:notes_app_training/bootstrap.dart';

void main() {
  bootstrap(
    app: const NotesAppTraining(),
    beforeRunApp: () {
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.blue,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ),
      );
    },
  );
}

// class NotesAppTraining extends StatelessWidget {
//   const NotesAppTraining({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => NotesCubit(),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
//         home: const NotesView(),
//       ),
//     );
//   }
// }
