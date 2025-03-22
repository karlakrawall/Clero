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

Future<int> calculateSalary(
    String selectedSalaryTable,
    String selectedSalaryBand,
    String selectedSDJ,
    bool salarband12cNoBiga,
    bool salarband12aInstructor,
    bool salarband3Instructor,
    int additionalLanguages) async {
  // Firestore reference
  CollectionReference salaryTables =
      FirebaseFirestore.instance.collection('salary_tables');

  // Query Firestore for the correct row
  QuerySnapshot querySnapshot = await salaryTables
      .where('table', isEqualTo: selectedSalaryTable)
      .where('band', isEqualTo: selectedSalaryBand)
      .where('sdj', isEqualTo: selectedSDJ)
      .limit(1)
      .get();

  // Ensure we have a valid document
  if (querySnapshot.docs.isEmpty) {
    return 0; // Handle missing data
  }

  // Extract base_salary
  int baseSalary = querySnapshot.docs.first.get('base_salary') as int;

  // Apply salary adjustments
  int adjustment = 0;
  if (salarband12cNoBiga) adjustment -= 250;
  if (salarband12aInstructor) adjustment += 150;
  if (salarband3Instructor) adjustment += 50;
  adjustment += additionalLanguages * 50;

  return baseSalary + adjustment;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
