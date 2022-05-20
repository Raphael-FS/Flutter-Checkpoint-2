import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StandardForm extends StatelessWidget {
  final String label;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;
  final FocusNode? focusNode;

  StandardForm(
      {required this.label,
      this.userInputController,
      this.onEditingComplete,
      this.focusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 18,
      ),
      inputFormatters: [
        new LengthLimitingTextInputFormatter(60),
      ],
      focusNode: focusNode,      
      onEditingComplete: onEditingComplete,
      controller: userInputController,
      decoration: InputDecoration(
        label: Text(label),
      ),
    );
  }
}

