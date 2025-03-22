// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> calculateVacationPayment(
    double blockHours, String baseSalary, String vacationEntitlement) async {
  // Convert baseSalary to double
  double parsedBaseSalary = double.tryParse(baseSalary) ?? 0.0;

  // Convert vacationEntitlement to double (renamed to avoid conflict)
  double parsedVacationEntitlement =
      double.tryParse(vacationEntitlement) ?? 0.0;

  double hourlyRate =
      parsedBaseSalary / 90; // Corrected hourly rate calculation
  return hourlyRate * parsedVacationEntitlement / 100 * blockHours;
}
