// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

Future<void> updateLastLandingBoeing(String lastLandingMonth) async {
  // Get the current user's ID
  String? userId = FirebaseAuth.instance.currentUser?.uid;
  if (userId == null) {
    throw Exception("User not logged in");
  }

  // Convert month string to DateTime (first day of the month)
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

  int monthNumber =
      monthMap[lastLandingMonth] ?? 1; // Default to January if invalid
  DateTime lastLandingDate = DateTime(DateTime.now().year, monthNumber, 1);

  // Calculate the last date of recency (6 months later, last day of that month)
  DateTime recencyEndDate =
      DateTime(lastLandingDate.year, lastLandingDate.month + 6, 0);

  // Reference to Firestore users collection
  DocumentReference userDoc =
      FirebaseFirestore.instance.collection('users').doc(userId);

  // Update Firestore with the new recency data
  await userDoc.update({
    'recency_Boeing': Timestamp.fromDate(recencyEndDate),
  });
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
