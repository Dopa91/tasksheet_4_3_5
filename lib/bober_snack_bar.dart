import 'package:flutter/material.dart';

class BoberSnackBar extends StatelessWidget {
  const BoberSnackBar({
    super.key,
    required this.image,
  });

  final Image image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: image,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.redAccent,
        ),
        width: 200,
        height: 42,
        child: const Icon(Icons.touch_app),
      ),
    );
  }
}
