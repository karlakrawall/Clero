// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:intl/intl.dart';

String addFiveYearsToDate(String inputDate) {
  try {
    // Parse input date (expected format: d/m/y)
    DateFormat inputFormat = DateFormat("d/M/y");
    DateTime date = inputFormat.parse(inputDate);

    // Add 5 years
    DateTime newDate = DateTime(date.year + 5, date.month, date.day);

    // Format output as d/m/y
    DateFormat outputFormat = DateFormat("d/M/y");
    return outputFormat.format(newDate);
  } catch (e) {
    return "Invalid date"; // Error handling
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
