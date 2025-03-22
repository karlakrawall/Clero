// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> calculateGracePeriod(
    String lastRGCMonth, String lastRGCYear) async {
  try {
    // Convert year input to an integer
    int year = int.tryParse(lastRGCYear) ?? 0;

    // Define a map of month names to their corresponding numbers
    Map<String, int> monthMap = {
      "January": 1,
      "February": 2,
      "March": 3,
      "April": 4,
      "May": 5,
      "June": 6,
      "July": 7,
      "August": 8,
      "September": 9,
      "October": 10,
      "November": 11,
      "December": 12
    };

    // Normalize input (convert to capitalized month names)
    String formattedMonth = lastRGCMonth.trim();
    formattedMonth = formattedMonth[0].toUpperCase() +
        formattedMonth.substring(1).toLowerCase();

    int? monthNumber = monthMap[formattedMonth];
    if (monthNumber == null || year == 0) {
      return "Invalid input";
    }

    List<String> graceMonths = [];

    // Grace Period should be the last 3 months leading up to 31.08 next year
    int deadlineYear = year + 1; // RGC cycle ends in the following year
    int deadlineMonth = 8; // Always August (31.08.nextYear)

    // Special case: If RGC is in November or December
    if (monthNumber == 11) {
      graceMonths = ["October", "November"]; // No December
    } else if (monthNumber == 12) {
      graceMonths = ["December", "January"]; // No November
    } else {
      // Calculate the last 3 months before the deadline (June, July, August)
      for (int i = 2; i >= 0; i--) {
        int adjustedMonth = deadlineMonth - i;
        int adjustedYear = deadlineYear;

        // Convert number back to month name
        graceMonths
            .add(monthMap.keys.firstWhere((k) => monthMap[k] == adjustedMonth));
      }
    }

    return graceMonths.join(", ");
  } catch (e) {
    return "Error calculating Grace Period";
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
