import 'package:flutter/material.dart';
import 'package:notes_app_training/constants.dart';
import 'package:notes_app_training/models/note_model.dart';
import 'package:notes_app_training/widgets/custom_color_listview.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentColorIndex;
  @override
  void initState() {
    // currentColorIndex = kColors.indexOf(Color(widget.note.color));

    super.initState();
    currentColorIndex =
        kColors.indexWhere((color) => color.value == widget.note.color);
    currentColorIndex = currentColorIndex != -1
        ? currentColorIndex
        : 0; //last two lines from gpt
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {
                currentColorIndex = index;
                // BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                widget.note.color = kColors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isSelected: currentColorIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
