// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> calculateFlightHoursFromDays(String numberOfDays) async {
  // Step 1: Convert input string to integer
  int parsedDays = int.tryParse(numberOfDays) ?? 0;

  // Step 2: Calculate total minutes (3 hours per day)
  int totalMinutes = parsedDays * 180; // 3 hours * 60 minutes

  // Step 3: Convert minutes to hours and minutes
  int hours = totalMinutes ~/ 60; // Get whole hours
  int minutes = totalMinutes % 60; // Get remaining minutes

  // Step 4: Format the output as "HH:MM"
  return "$hours:${minutes.toString().padLeft(2, '0')}";
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
