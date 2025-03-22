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

Future<List<String>> calculateRecency() async {
  // Get the current user's ID
  String? userId = FirebaseAuth.instance.currentUser?.uid;
  if (userId == null) {
    throw Exception("User not logged in");
  }

  // Reference to Firestore users collection
  DocumentReference userDoc =
      FirebaseFirestore.instance.collection('users').doc(userId);
  DocumentSnapshot userSnapshot = await userDoc.get();

  if (!userSnapshot.exists) {
    throw Exception("User document not found");
  }

  // Fetch last landing dates from Firestore (Ensure they are stored as Timestamp)
  Map<String, dynamic>? userData = userSnapshot.data() as Map<String, dynamic>?;

  Timestamp? lastLandingA220 = userData?['recency_Airbus220'];
  Timestamp? lastLandingA320 = userData?['recency_Airbus320'];
  Timestamp? lastLandingA330340 = userData?['recency_Airbus330340'];
  Timestamp? lastLandingBoeing = userData?['recency_Boeing'];

  // Convert Firestore Timestamp to DateTime
  DateTime? convertTimestamp(Timestamp? timestamp) {
    return timestamp != null ? timestamp.toDate() : null;
  }

  // Function to calculate recency expiry
  String getRecencyDate(DateTime? lastLanding) {
    if (lastLanding == null) return ""; // No landing recorded
    DateTime recencyExpiry =
        lastLanding.add(Duration(days: 180)); // 6 months later
    if (recencyExpiry.isBefore(DateTime.now()))
      return ""; // If expired, return empty
    return DateFormat("MMMM yyyy")
        .format(recencyExpiry); // Return formatted date
  }

  // Calculate outputs
  String recencyA220 = getRecencyDate(convertTimestamp(lastLandingA220));
  String recencyA320 = getRecencyDate(convertTimestamp(lastLandingA320));
  String recencyA330340 = getRecencyDate(convertTimestamp(lastLandingA330340));
  String recencyBoeing = getRecencyDate(convertTimestamp(lastLandingBoeing));

  // Return as List<String> (FlutterFlow-compatible)
  return [recencyA220, recencyA320, recencyA330340, recencyBoeing];
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
