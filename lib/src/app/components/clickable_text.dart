import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  final String label;
  final Function()? onTap;

  ClickableText({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        label,
        style: const TextStyle(
            fontSize: 25,
            color: Colors.lime,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
