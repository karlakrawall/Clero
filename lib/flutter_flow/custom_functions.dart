import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

bool isValidSwissEmail(String emailAddress) {
  return emailAddress.toLowerCase().endsWith('@swiss.com');
}

bool isRecencyDateInFutureA220(String recencyDateA220) {
  // Convert input string to DateTime
  try {
    DateTime recencyDate = DateFormat("dd.MM.yyyy").parse(recencyDateA220);
    DateTime today = DateTime.now();

    // Compare the dates
    return recencyDate.isAfter(today);
  } catch (e) {
    return false; // Return false if date parsing fails
  }
}

bool isRecencyDateInFutureA320(String recencyDateA320) {
  // Convert input string to DateTime
  try {
    DateTime recencyDate = DateFormat("dd.MM.yyyy").parse(recencyDateA320);
    DateTime today = DateTime.now();

    // Compare the dates
    return recencyDate.isAfter(today);
  } catch (e) {
    return false; // Return false if date parsing fails
  }
}

bool isRecencyDateInFutureA330340(String recencyDateA330340) {
  // Convert input string to DateTime
  try {
    DateTime recencyDate = DateFormat("dd.MM.yyyy").parse(recencyDateA330340);
    DateTime today = DateTime.now();

    // Compare the dates
    return recencyDate.isAfter(today);
  } catch (e) {
    return false; // Return false if date parsing fails
  }
}

bool isRecencyDateInFutureBeoing(String recencyDateBeoing) {
  // Convert input string to DateTime
  try {
    DateTime recencyDate = DateFormat("dd.MM.yyyy").parse(recencyDateBeoing);
    DateTime today = DateTime.now();

    // Compare the dates
    return recencyDate.isAfter(today);
  } catch (e) {
    return false; // Return false if date parsing fails
  }
}

double getProgressBarWidth(String recencyDateX) {
  try {
    // Convert input string to DateTime
    DateTime recencyDate = DateFormat("dd.MM.yyyy").parse(recencyDateX);
    DateTime today = DateTime.now();

    // Define max start date (6 months before recencyDate)
    DateTime maxStart = recencyDate.subtract(Duration(days: 180));

    // Calculate remaining days
    int totalDays = recencyDate.difference(maxStart).inDays; // Total period
    int daysLeft = recencyDate.difference(today).inDays; // Days remaining

    // Normalize the value (0 to 1)
    double progressValue = (daysLeft / totalDays).clamp(0.0, 1.0);

    return progressValue; // Return as double (0 to 1)
  } catch (e) {
    return 0.0; // Default to 0 if there's an error
  }
}

Color getProgressBarColor(String recencyDateX) {
  try {
    // Convert input string to DateTime
    DateTime recencyDate = DateFormat("dd.MM.yyyy").parse(recencyDateX);
    DateTime today = DateTime.now();

    // Define key date ranges
    DateTime redStart = recencyDate.subtract(Duration(days: 77)); // 15.06.
    DateTime orangeStart = recencyDate.subtract(Duration(days: 108)); // 15.05.

    // Determine color based on urgency
    if (today.isAfter(redStart)) {
      return Color(0xFFE54B4B); // Red
    } else if (today.isAfter(orangeStart)) {
      return Color(0xFFF4A261); // Orange
    } else {
      return Color(0xFF4CAF50); // Green
    }
  } catch (e) {
    return Color(0xFFE54B4B); // Default to red in case of an error
  }
}

String getRecencyStatusText(String recencyDateX) {
  try {
    // Convert input string to DateTime
    DateTime recencyDate = DateFormat("dd.MM.yyyy").parse(recencyDateX);
    DateTime today = DateTime.now();

    // Define key date ranges
    DateTime redStart = recencyDate.subtract(Duration(days: 77)); // 15.06.
    DateTime orangeStart = recencyDate.subtract(Duration(days: 108)); // 15.05.

    // Determine status based on urgency
    if (today.isAfter(redStart)) {
      return "Flight Required"; // Red
    } else if (today.isAfter(orangeStart)) {
      return "Expiring Soon"; // Orange
    } else {
      return "Up-to-date"; // Green
    }
  } catch (e) {
    return "Unknown Status"; // Default in case of error
  }
}

String getRecencyFPDeadline(String recencyDateX) {
  try {
    // Convert input string to DateTime (dd.MM.yyyy format)
    DateTime recencyDate = DateFormat("dd.MM.yyyy").parse(recencyDateX);

    // Get the first day of the previous month
    DateTime firstOfPrevMonth =
        DateTime(recencyDate.year, recencyDate.month - 1, 1);

    // Set the deadline to the 2nd of that month
    DateTime fpDeadline =
        DateTime(firstOfPrevMonth.year, firstOfPrevMonth.month, 3);

    // Return the deadline in "dd.MM.yyyy" format
    return DateFormat("dd.MM.yyyy").format(fpDeadline);
  } catch (e) {
    return "Invalid Date"; // Default in case of an error
  }
}

Color getDeadlineColor(String deadlineDateX) {
  DateTime deadlineDate; // Declare before the try block

  try {
    // Try parsing "d/M/y" format (e.g., "13/3/2025")
    deadlineDate = DateFormat("d/M/y").parse(deadlineDateX);
  } catch (_) {
    try {
      // Fallback to parsing "dd.MM.yyyy" format (if already converted)
      deadlineDate = DateFormat("dd.MM.yyyy").parse(deadlineDateX);
    } catch (e) {
      return Color(0xFFE54B4B); // Default to red in case of an error
    }
  }

  DateTime today = DateTime.now();

  // Define key date ranges
  DateTime redStart =
      deadlineDate.subtract(Duration(days: 3)); // 3 days before deadline
  DateTime orangeStart =
      deadlineDate.subtract(Duration(days: 7)); // 7 days before deadline

  // Determine color based on urgency
  if (today.isAfter(redStart)) {
    return Color(0xFFE54B4B); // Red
  } else if (today.isAfter(orangeStart)) {
    return Color(0xFFF4A261); // Orange
  } else {
    return Color(0xFF4CAF50); // Green
  }
}

Color getDeadlineColorContainer(String deadlineDateX) {
  DateTime deadlineDate; // Declare before the try block

  try {
    // Try parsing "d/M/y" format (e.g., "13/3/2025")
    deadlineDate = DateFormat("d/M/y").parse(deadlineDateX);
  } catch (_) {
    try {
      // Fallback to parsing "dd.MM.yyyy" format (if already converted)
      deadlineDate = DateFormat("dd.MM.yyyy").parse(deadlineDateX);
    } catch (e) {
      return Color(0xFFF8E8E8); // Default to red in case of an error
    }
  }

  DateTime today = DateTime.now();

  // Define key date ranges
  DateTime redStart =
      deadlineDate.subtract(Duration(days: 3)); // 3 days before deadline
  DateTime orangeStart =
      deadlineDate.subtract(Duration(days: 7)); // 7 days before deadline

  // Determine color based on urgency
  if (today.isAfter(redStart)) {
    return Color(0xFFF8E8E8); // Red
  } else if (today.isAfter(orangeStart)) {
    return Color(0xFFFCE8D5); // Orange
  } else {
    return Color(0xFFE6F4EA); // Green
  }
}

String formatFlightHours(double totalHours) {
  int hours = totalHours.floor(); // Get whole hours
  int minutes =
      ((totalHours - hours) * 60).round(); // Convert decimal to minutes

  return "$hours:${minutes.toString().padLeft(2, '0')}"; // Ensures "XX:YY" format
}

double roundToTwoDecimals(double value) {
  return double.parse(value.toStringAsFixed(2));
}

bool isRecencyDateInFutureRGC(String? recencyDateRGC) {
  if (recencyDateRGC == null || recencyDateRGC.isEmpty) {
    return false; // If the input is null or empty, return false
  }

  try {
    // Convert input string to DateTime
    DateTime recencyDate = DateFormat("dd.MM.yyyy").parse(recencyDateRGC);
    DateTime today = DateTime.now();

    // Compare the dates
    return recencyDate.isAfter(today);
  } catch (e) {
    return false; // Return false if date parsing fails
  }
}

String getRGCDeadline(String recencyDateX) {
  try {
    // Convert input string (dd.MM.yyyy) to DateTime
    DateTime recencyDate = DateFormat("dd.MM.yyyy").parse(recencyDateX);

    // Get the year of recency date
    int year = recencyDate.year;

    // Determine the request deadline based on the validity month
    int deadlineMonth =
        recencyDate.month - 2; // Two months before the validity month
    int deadlineDay =
        DateTime(year, deadlineMonth + 1, 0).day; // Last day of the month

    // Construct the deadline date
    DateTime rgcDeadline = DateTime(year, deadlineMonth, deadlineDay);

    // Format the deadline as "dd.MM.yyyy"
    return DateFormat("dd.MM.yyyy").format(rgcDeadline);
  } catch (e) {
    return "Invalid Date"; // Return default value if parsing fails
  }
}

String getRecencyStatusRGC(String recencyDateX) {
  try {
    // Convert input string to DateTime
    DateTime recencyDate = DateFormat("dd.MM.yyyy").parse(recencyDateX);
    DateTime today = DateTime.now();

    // Define key date ranges
    DateTime redStart = recencyDate.subtract(Duration(days: 77)); // 15.06.
    DateTime orangeStart = recencyDate.subtract(Duration(days: 108)); // 15.05.

    // Determine status based on urgency
    if (today.isAfter(redStart)) {
      return "RGC Required"; // Red
    } else if (today.isAfter(orangeStart)) {
      return "Expiring Soon"; // Orange
    } else {
      return "Up-to-date"; // Green
    }
  } catch (e) {
    return "Unknown Status"; // Default in case of error
  }
}

bool isMedicalDeadlineInFuture(String medicalDeadline) {
  if (medicalDeadline == null || medicalDeadline.isEmpty) {
    return false; // If the input is null or empty, return false
  }

  try {
    // Convert input string (expected format: dd.MM.yyyy) to DateTime
    DateTime deadlineDate = DateFormat("dd.MM.yyyy").parse(medicalDeadline);
    DateTime today = DateTime.now();

    // Compare the dates
    return deadlineDate.isAfter(today);
  } catch (e) {
    return false; // Return false if date parsing fails
  }
}
