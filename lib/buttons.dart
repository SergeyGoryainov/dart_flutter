import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPress;
  final String label;
  final Color color;

  const MyButton({
    super.key,
    required this.onPress,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Container(
        color: color,
        constraints: const BoxConstraints.expand(),
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
