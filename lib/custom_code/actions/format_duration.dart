// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

String formatDuration(String hours, String minutes) {
  // Convert hours and minutes to integers, defaulting to 0 if invalid
  int h = int.tryParse(hours.trim()) ?? 0;
  int m = int.tryParse(minutes.trim()) ?? 0;

  // Format as two-digit strings
  String formattedHours = h.toString().padLeft(2, '0');
  String formattedMinutes = m.toString().padLeft(2, '0');

  // Return in HH:MM format
  return '$formattedHours:$formattedMinutes';
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
