import 'package:function_tree/function_tree.dart';
import 'package:flutter/material.dart';

class CalculatorProvider extends ChangeNotifier {
  final compController = TextEditingController();

  // This method handles the button press logic
  setValue(String value) {
    String str = compController.text;

    switch (value) {
      case "C":
        compController.clear(); // Clear the text
        break;
      case "AC":
      // If there's text, remove the last character
        if (str.isNotEmpty) {
          compController.text = str.substring(0, str.length - 1);
        }
        break;
      case "X":
      // Add multiplication symbol
        compController.text += "*";
        break;
      case "=":
        compute(); // Call compute when the user presses "="
        break;
      default:
      // Add the value (button press) to the text field
        compController.text += value;
    }
    notifyListeners(); // Notify listeners to update the UI
  }

  // This method evaluates the expression in the text field
  compute() {
    String text = compController.text;

    // Check if the text is empty
    if (text.isEmpty) {
      return; // If empty, do nothing or you can set an error message
    }

    try {
      // Attempt to evaluate the expression
      compController.text = text.interpret().toString();
    } catch (e) {
      // If there's an error (invalid expression), show an error message
      compController.text = "Error"; // Optionally display an error message
    }
  }

  @override
  void dispose() {
    compController.dispose(); // Dispose the controller when no longer needed
    super.dispose();
  }
}
