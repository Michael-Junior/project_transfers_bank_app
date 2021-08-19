import 'package:flutter/material.dart';

class EditorForm extends StatelessWidget {
  final IconData? icon;
  final String? descriptionLabel;
  final TextEditingController? controller;
  final String? clue;

  EditorForm({
    this.icon,
    this.descriptionLabel,
    this.controller,
    this.clue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        style: TextStyle(fontSize: 24),
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: descriptionLabel,
          hintText: clue,
          icon: icon != null ? Icon(icon) : null,
        ),
      ),
    );
  }
}