// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

String calculatePercentage(String dateOfBirth, String entryDateSwiss) {
  // Convert date from d/m/y format
  List<String> dobParts = dateOfBirth.split("/");
  List<String> entryParts = entryDateSwiss.split("/");

  DateTime dob = DateTime(
      int.parse(dobParts[2]), int.parse(dobParts[1]), int.parse(dobParts[0]));
  DateTime entryDate = DateTime(int.parse(entryParts[2]),
      int.parse(entryParts[1]), int.parse(entryParts[0]));
  DateTime today = DateTime.now();

  int age = today.year - dob.year;
  if (today.month < dob.month ||
      (today.month == dob.month && today.day < dob.day)) {
    age--;
  }

  int yearsOfService = today.year - entryDate.year;
  if (today.month < entryDate.month ||
      (today.month == entryDate.month && today.day < entryDate.day)) {
    yearsOfService--;
  }

  double percentage = 0.0;
  double additionalPercentage = 0.0;
  DateTime cutoffDate = DateTime(2014, 6, 30);

  if (entryDate.isBefore(cutoffDate)) {
    // Entry before 1 July 2014
    if (age < 20) {
      percentage = 10.64;
    } else if (yearsOfService < 5) {
      percentage = 8.33;
    } else if (yearsOfService < 9) {
      percentage = 10.64;
    } else if (yearsOfService < 13) {
      percentage = 11.31;
    } else if (yearsOfService < 16) {
      percentage = 12.00;
    } else {
      percentage = 13.05;
    }

    // Add additional 0.7% if age is 50 or older
    if (age >= 50) {
      additionalPercentage += 0.7;
    }
  } else {
    // Entry after 30 June 2014
    if (age < 20) {
      percentage = 10.64;
    } else {
      percentage = 8.33;
    }
  }

  // Add 0.7% if the sum of age + service years exceeds thresholds
  int sumAgeService = age + yearsOfService;
  if (sumAgeService > 34) additionalPercentage += 0.7;
  if (sumAgeService > 49) additionalPercentage += 0.7;
  if (sumAgeService > 64) additionalPercentage += 0.7;
  if (sumAgeService > 74) additionalPercentage += 0.7;
  if (sumAgeService > 84) additionalPercentage += 0.7;

  double totalPercentage = percentage + additionalPercentage;

  // Return formatted string with exactly two decimal places (e.g., "12.00")
  return totalPercentage.toStringAsFixed(2);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
