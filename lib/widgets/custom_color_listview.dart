import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});

  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 34,
            backgroundColor: color,
          );
  }
}

class CustomColorListView extends StatefulWidget {
  const CustomColorListView({super.key});

  @override
  State<CustomColorListView> createState() => _CustomColorListViewState();
}

class _CustomColorListViewState extends State<CustomColorListView> {
  int currentColorIndex = 0;
  List<Color> colors = const [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: () {
                  currentColorIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  color: colors[index],
                  isSelected: currentColorIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
