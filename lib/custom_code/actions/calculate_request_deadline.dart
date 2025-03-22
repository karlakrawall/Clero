// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

List<String> calculateRequestDeadline(String selectedDate, bool requestTypeFR,
    bool requestTypeSTF, bool requestTypeLTF) {
  try {
    print("Selected Date: $selectedDate");
    print(
        "Request Type - FR: $requestTypeFR, STF: $requestTypeSTF, LTF: $requestTypeLTF");

    if (selectedDate.trim().isEmpty) {
      print("Error: selectedDate is empty!");
      return ["Invalid Date", "N/A", "false", "N/A"];
    }

    // Convert "22/5/2025" (DD/MM/YYYY) to separate values
    List<String> dateParts = selectedDate.split('/');
    if (dateParts.length != 3) {
      print("Error: Date format is incorrect! Expected DD/MM/YYYY");
      return ["Invalid Date", "N/A", "false", "N/A"];
    }

    int day, month, year;
    try {
      day = int.parse(dateParts[0]);
      month = int.parse(dateParts[1]);
      year = int.parse(dateParts[2]);
    } catch (e) {
      print("Error: Could not parse numbers from selectedDate");
      return ["Invalid Date", "N/A", "false", "N/A"];
    }

    print("Extracted Date - Day: $day, Month: $month, Year: $year");

    int deadlineDay = 19; // Default for Flight Request (FR)
    int deadlineMonth;
    int deadlineYear = year;

    // **Determine deadline day based on request type**
    if (requestTypeSTF) {
      deadlineDay = 22;
    } else if (requestTypeLTF) {
      deadlineDay = 8;
    }

    // **Deadline Month Calculation**
    if (day >= 11) {
      deadlineMonth = month - 2;
    } else {
      deadlineMonth = month - 3;
    }

    // **Handle year transition**
    if (deadlineMonth <= 0) {
      deadlineMonth += 12;
      deadlineYear -= 1;
    }

    // **Ensure date is valid**
    DateTime deadlineDate;
    try {
      deadlineDate = DateTime(deadlineYear, deadlineMonth, deadlineDay);
    } catch (e) {
      print("Error: Invalid deadline date - $e");
      return ["Invalid Date", "N/A", "false", "N/A"];
    }

    DateTime today = DateTime.now();
    int daysRemaining = deadlineDate.difference(today).inDays + 1;

    // **Check if the deadline has passed**
    if (daysRemaining < 0) {
      print("❌ Deadline has passed!");
      return ["You have missed the deadline...", "N/A", "false", "N/A"];
    }

    // **Format deadline as "DD.MM.YYYY"**
    String deadlineFormatted =
        "${deadlineDay.toString().padLeft(2, '0')}.${deadlineMonth.toString().padLeft(2, '0')}.$deadlineYear";

    // **Format remaining days output**
    String daysRemainingText;
    if (daysRemaining == 1) {
      daysRemainingText = "in 1 day";
    } else if (daysRemaining < 1) {
      daysRemainingText = "Today";
    } else {
      daysRemainingText = "in $daysRemaining days";
    }

    // **Submission period calculations for "Short-term freeday"**
    String submissionPeriodOpen = "false"; // Default to false
    String submissionOpensIn = "N/A"; // Default to N/A

    if (requestTypeSTF) {
      DateTime submissionStartDate = DateTime(deadlineYear, deadlineMonth, 9);
      int daysUntilSubmission = submissionStartDate.difference(today).inDays;

      if (daysRemaining >= 0) {
        // Ensure the deadline hasn't passed
        if (daysUntilSubmission <= 0) {
          submissionPeriodOpen = "true";
          submissionOpensIn = "N/A";
        } else {
          submissionPeriodOpen = "false";
          submissionOpensIn = daysUntilSubmission == 1
              ? "in 1 day"
              : "in $daysUntilSubmission days";
        }
      } else {
        submissionPeriodOpen = "false";
        submissionOpensIn =
            "N/A"; // Ensure correct value when deadline has passed
      }
    }

    print("✅ Final Deadline: $deadlineFormatted");
    print("✅ Days Remaining: $daysRemainingText");
    print("✅ Submission Period Open: $submissionPeriodOpen");
    print("✅ Submission Period Opens In: $submissionOpensIn");

    return [
      deadlineFormatted,
      daysRemainingText,
      submissionPeriodOpen,
      submissionOpensIn
    ];
  } catch (e) {
    print("❌ Error: Exception occurred - $e");
    return ["Invalid Date", "N/A", "false", "N/A"];
  }
}
