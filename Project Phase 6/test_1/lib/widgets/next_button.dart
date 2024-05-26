import 'package:flutter/material.dart';

class RectangularButton extends StatelessWidget {
  const RectangularButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  final VoidCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: SizedBox(
        height: 60,
        width:300,
        child: Card(
          color: onPressed != null ? Colors.indigoAccent : Colors.blue.shade100,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white70,
                letterSpacing: 2,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
