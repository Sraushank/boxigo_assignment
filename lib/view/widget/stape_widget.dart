import 'package:flutter/material.dart';

class StapeWidget extends StatefulWidget {
  String title;
  String icon;

  StapeWidget({super.key, required this.title, required this.icon});

  @override
  State<StapeWidget> createState() => _StapeWidgetState();
}

class _StapeWidgetState extends State<StapeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          widget.icon,
          width: 20,
          height: 20,
          fit: BoxFit.cover,
        ),
        Text(widget.title)
      ],
    );
  }
}
