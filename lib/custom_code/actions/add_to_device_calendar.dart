// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:intl/intl.dart';

Future<void> addToDeviceCalendar(bool requestTypeFR, bool requestTypeSTF,
    bool requestTypeLTF, String requestDeadline) async {
  try {
    // ✅ Convert "DD.MM.YYYY" to DateTime format
    List<String> dateParts = requestDeadline.split('.');
    if (dateParts.length != 3) {
      print("❌ Invalid date format. Expected DD.MM.YYYY");
      return;
    }

    DateTime eventDate = DateTime(
      int.parse(dateParts[2]), // Year
      int.parse(dateParts[1]), // Month
      int.parse(dateParts[0]), // Day
    );

    // ✅ Determine Event Title Based on Request Type
    String eventTitle = "Request Deadline"; // Default title

    if (requestTypeFR) {
      eventTitle = "Flight Request Deadline";
    } else if (requestTypeSTF) {
      eventTitle = "Short-Term Freeday Deadline";
    } else if (requestTypeLTF) {
      eventTitle = "Long-Term Freeday Deadline";
    }

    // ✅ Create the event
    final Event event = Event(
      title: eventTitle,
      description: "", // No description needed
      startDate: eventDate,
      endDate: eventDate,
      allDay: true, // Ensures it's an all-day event
    );

    // ✅ Add event to device calendar
    await Add2Calendar.addEvent2Cal(event);
    print("✅ Event successfully added to calendar!");
  } catch (e) {
    print("❌ Error adding event to calendar: $e");
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
