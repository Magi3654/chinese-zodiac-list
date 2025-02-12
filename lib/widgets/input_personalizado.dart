import 'package:flutter/material.dart';

class InputPersonalizado extends StatelessWidget {
  const InputPersonalizado({
    super.key,
    required this.labelText,
    required this.icon,
    required this.hintText,
    
  });

  final String labelText;
  final IconData icon;
  final String hintText;
  

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          prefixIcon: Icon(icon)),
    );
  }
}
