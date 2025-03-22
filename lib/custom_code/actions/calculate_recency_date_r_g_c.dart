// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> calculateRecencyDateRGC(
    String lastRGCMonth, String lastRGCYear) async {
  try {
    // Convert year input to an integer
    int year = int.tryParse(lastRGCYear) ?? 0;

    // Define a map of month names to their corresponding numbers
    Map<String, int> monthMap = {
      "january": 1,
      "february": 2,
      "march": 3,
      "april": 4,
      "may": 5,
      "june": 6,
      "july": 7,
      "august": 8,
      "september": 9,
      "october": 10,
      "november": 11,
      "december": 12
    };

    // Normalize input (convert to lowercase and get month number)
    int? monthNumber = monthMap[lastRGCMonth.toLowerCase()];
    if (monthNumber == null || year == 0) {
      return "Invalid input";
    }

    // Calculate the validity date
    int validityYear = year + 1;
    int validityMonth = (monthNumber == 7)
        ? 8
        : monthNumber + 1; // If July, set to August, otherwise next month
    int lastDay = DateTime(validityYear, validityMonth + 1, 0)
        .day; // Get last day of the month

    // Format the final date as "dd.MM.yyyy"
    String recencyDateRGC =
        "${lastDay.toString().padLeft(2, '0')}.${validityMonth.toString().padLeft(2, '0')}.$validityYear";

    return recencyDateRGC;
  } catch (e) {
    return "Error calculating recency date";
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
