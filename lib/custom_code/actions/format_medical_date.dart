// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

String formatMedicalDate(String medicalDate) {
  try {
    // Define the expected input format (d/m/y)
    DateFormat inputFormat = DateFormat("d/M/y");

    // Parse the input date
    DateTime parsedDate = inputFormat.parse(medicalDate);

    // Format to "dd.MM.yyyy"
    String formattedDate = DateFormat("dd.MM.yyyy").format(parsedDate);

    return formattedDate;
  } catch (e) {
    return "Invalid Date"; // Return error message if parsing fails
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
