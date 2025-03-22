// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

String calculateRecencyDate(String month, String year) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  // Define month-to-date mapping
  final Map<String, String> monthToDate = {
    "January": "31.07.",
    "February": "31.08.",
    "March": "30.09.",
    "April": "31.10.",
    "May": "30.11.",
    "June": "31.12.",
    "July": "31.01.",
    "August": "28.02.",
    "September": "31.03.",
    "October": "30.04.",
    "November": "31.05.",
    "December": "30.06."
  };

  // Ensure valid month input
  if (!monthToDate.containsKey(month)) {
    return "Invalid Month";
  }

  // Get calculated date
  String calculatedDate = monthToDate[month] ?? "Invalid Month";

  // Determine the correct year
  int selectedYear = int.tryParse(year) ?? 2025;
  int outputYear = (month == "July" ||
          month == "August" ||
          month == "September" ||
          month == "October" ||
          month == "November" ||
          month == "December")
      ? selectedYear + 1 // Move to next year for these months
      : selectedYear; // Keep the same year for Jan–June

  return calculatedDate + outputYear.toString();

  /// MODIFY CODE ONLY ABOVE THIS LINE
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
