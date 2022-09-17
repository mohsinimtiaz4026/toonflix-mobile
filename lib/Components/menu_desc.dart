import 'package:flutter/material.dart';

class MenuDesc extends StatelessWidget {
  final String title;
  final String text;
  VoidCallback onpress;
  MenuDesc({
    Key? key,
    required this.title,
    required this.text,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        ActionChip(
          label: Text(text),
          onPressed: onpress,
        ),
      ],
    );
  }
}
