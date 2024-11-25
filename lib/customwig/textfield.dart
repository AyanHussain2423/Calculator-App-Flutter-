import 'package:flutter/material.dart';

class CustomWidgetText extends StatelessWidget {
  const CustomWidgetText({
    super.key, required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black, // Background color
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      margin: EdgeInsets.symmetric(vertical: 24, horizontal: 28),
      child: TextField(
        controller: controller,
        readOnly: true,
        autofocus: true,
        showCursor: true,
        style: const TextStyle(
          fontSize: 28,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(style: BorderStyle.none),
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(style: BorderStyle.none)
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(style: BorderStyle.none)
          ),
          filled: true,
          fillColor: Colors.black87,
        ),
      ),
    );
  }
}