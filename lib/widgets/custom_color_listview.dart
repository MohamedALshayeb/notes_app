import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: CircleAvatar(
        radius: 38,
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class CustomColorListView extends StatelessWidget {
  const CustomColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return const ColorItem();
          }),
    );
  }
}
