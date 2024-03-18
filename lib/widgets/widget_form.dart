import 'package:flutter/material.dart';

class WidgetForm extends StatelessWidget {
  const WidgetForm({super.key, required this.hint, this.subfixWidget, this.obscu});

  final String hint;
  final Widget? subfixWidget;
  final bool? obscu;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 16),
        width: 250,
        child: TextFormField(obscureText: obscu ?? false,
            decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.withOpacity(0.25),
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: const Icon(Icons.person),
          suffixIcon: subfixWidget,
        )));
  }
}
