// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> calculateSalaryForBlockHours(
    double blockHours, String baseSalary) async {
  // Convert baseSalary to double
  double parsedBaseSalary = double.tryParse(baseSalary) ?? 0.0;

  // Avoid division by zero
  if (parsedBaseSalary == 0.0) {
    return 0.0;
  }

  double hourlyRate = parsedBaseSalary / 90;
  return hourlyRate * blockHours;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
