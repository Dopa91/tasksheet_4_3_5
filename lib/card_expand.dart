import 'package:flutter/material.dart';

class CardExpand extends StatelessWidget {
  const CardExpand({
    super.key,
    required this.color,
    required this.icon1,
    required this.icon2,
    required this.text,
  });

  final Color color;
  final IconData icon1;
  final IconData icon2;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          color: color,
          child: Icon(icon1),
        ),
        Text(text),
        Expanded(child: Icon(icon2)),
      ],
    );
  }
}
