// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> addUserFlights(String userId, String destination) async {
  final firestore = FirebaseFirestore.instance;

  try {
    // 🔍 Step 1: Query `flight_durations` for the selected destination
    final flightQuery = await firestore
        .collection('flight_durations')
        .where('origin', isEqualTo: 'ZRH')
        .where('destination', isEqualTo: destination)
        .get();

    if (flightQuery.docs.isEmpty) {
      print("⚠️ No flight data found for $destination");
      return;
    }

    final flightData = flightQuery.docs.first.data();
    final returnFlightId = flightData['return_flight_id'];

    // 🔍 Step 2: Query `flight_durations` for the return flight
    final returnFlightQuery = await firestore
        .collection('flight_durations')
        .where('flight_id', isEqualTo: returnFlightId)
        .get();

    if (returnFlightQuery.docs.isEmpty) {
      print("⚠️ No return flight found for $returnFlightId");
      return;
    }

    final returnFlightData = returnFlightQuery.docs.first.data();

    // ✅ Step 3: Add Departure Flight to `user_flights`
    await firestore.collection('user_flights').add({
      'user_id': userId,
      'flight_id': flightData['flight_id'],
      'destination': flightData['destination'],
      'origin': flightData['origin'],
      'duration': flightData['duration'],
      'added_at': Timestamp.now(),
    });

    // ✅ Step 4: Add Return Flight to `user_flights`
    await firestore.collection('user_flights').add({
      'user_id': userId,
      'flight_id': returnFlightData['flight_id'],
      'destination': returnFlightData['destination'],
      'origin': returnFlightData['origin'],
      'duration': returnFlightData['duration'],
      'added_at': Timestamp.now(),
    });
  } catch (e) {
    print("❌ Error adding flights: $e");
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
