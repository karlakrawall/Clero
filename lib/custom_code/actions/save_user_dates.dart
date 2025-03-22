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

Future<void> saveUserDates(
    DateTime birthday, DateTime technicalEntryDate) async {
  // Get the current user's ID
  String? userId = FirebaseAuth.instance.currentUser?.uid;

  if (userId == null) {
    throw Exception("User not logged in");
  }

  // Reference to Firestore users collection
  DocumentReference userDoc =
      FirebaseFirestore.instance.collection('users').doc(userId);

  // Update the user's document with the selected dates
  await userDoc.update({
    'birthday': birthday, // Firestore automatically stores DateTime
    'technical_entry_date': technicalEntryDate,
  });
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
