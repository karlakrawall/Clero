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

Future<void> saveSalaryToFirestore(
    int sdj,
    String salaryBand,
    String salaryTable,
    int baseSalary,
    int additionalLanguage,
    bool instructor150,
    bool instructor50,
    bool noBiga) async {
  // Get the current user's ID
  String? userId = FirebaseAuth.instance.currentUser?.uid;

  if (userId == null) {
    throw Exception("User not logged in");
  }

  // Reference to Firestore users collection
  DocumentReference userDoc =
      FirebaseFirestore.instance.collection('users').doc(userId);

  // Update the user's salary details
  await userDoc.update({
    'sdj': sdj,
    'salary_band': salaryBand,
    'salary_table': salaryTable,
    'base_salary': baseSalary,
    'additional_language': additionalLanguage,
    'instructor150': instructor150,
    'instructor50': instructor50,
    'no_biga': noBiga,
  });
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
