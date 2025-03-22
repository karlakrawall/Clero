// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

String autoFillTwoDigits(String inputText) {
  // Trim spaces
  String trimmedInput = inputText.trim();

  // If input is empty, return "00"
  if (trimmedInput.isEmpty) return '00';

  // Ensure input is a valid number
  int? number = int.tryParse(trimmedInput);

  // If not a valid number, return original input
  if (number == null) return trimmedInput;

  // Format the number as two digits
  return number.toString().padLeft(2, '0');
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
