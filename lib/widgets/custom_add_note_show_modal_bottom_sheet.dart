import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app_training/cuibits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_training/cuibits/notes_cubit/notes_cubit.dart';
import 'package:notes_app_training/widgets/add_note_form.dart';
// import 'package:notes_app_training/widgets/custom_bottom.dart';
// import 'package:notes_app_training/widgets/custom_text_field.dart';

class AddNoteShowModalBottomSheet extends StatelessWidget {
  const AddNoteShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
            right: 16,
            left: 16,
            top: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SingleChildScrollView(
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNotefailure) {}
              if (state is AddNotesuccess) {
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return AbsorbPointer(
                  absorbing: state is AddNoteLoading ? true : false,
                  child: const AddNoteForm());
            },
          ),
        ),
      ),
    );
  }
}
