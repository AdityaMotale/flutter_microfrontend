import 'package:flutter/material.dart';

class StyledTextfield extends StatelessWidget {
  const StyledTextfield({
    Key? key,
    required this.hint,
    required this.label,
    required this.color,
    required this.borderRadius,
    required this.icon,
  }) : super(key: key);

  final double borderRadius;
  final String hint;
  final String label;
  final Color color;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                borderRadius,
              ),
            ),
          ),
          hintText: hint,
          hintStyle: TextStyle(
            color: color,
          ),
          prefixIcon: icon,
          label: Text(
            label,
          ),
        ),
      ),
    );
  }
}
