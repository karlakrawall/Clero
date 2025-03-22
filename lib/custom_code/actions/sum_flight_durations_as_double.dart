// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

double sumFlightDurationsAsDouble(List<String> durations) {
  int totalMinutes = 0;

  for (String duration in durations) {
    List<String> parts = duration.split(":");
    int hours = int.parse(parts[0]);
    int minutes = int.parse(parts[1]);

    totalMinutes += (hours * 60) + minutes;
  }

  return totalMinutes / 60.0; // Keeps decimal for calculations
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
