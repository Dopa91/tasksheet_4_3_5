import 'package:flutter/material.dart';

class MenuPoints extends StatelessWidget {
  const MenuPoints({
    super.key,
    required this.menuText,
    required this.menuIcon,
  });

  final String menuText;
  final IconData menuIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(menuIcon),
          Text(menuText),
        ],
      ),
    );
  }
}
