import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FlightDurationsRecord extends FirestoreRecord {
  FlightDurationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "flight_id" field.
  String? _flightId;
  String get flightId => _flightId ?? '';
  bool hasFlightId() => _flightId != null;

  // "origin" field.
  String? _origin;
  String get origin => _origin ?? '';
  bool hasOrigin() => _origin != null;

  // "destination" field.
  String? _destination;
  String get destination => _destination ?? '';
  bool hasDestination() => _destination != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "return_flight_id" field.
  String? _returnFlightId;
  String get returnFlightId => _returnFlightId ?? '';
  bool hasReturnFlightId() => _returnFlightId != null;

  void _initializeFields() {
    _flightId = snapshotData['flight_id'] as String?;
    _origin = snapshotData['origin'] as String?;
    _destination = snapshotData['destination'] as String?;
    _duration = snapshotData['duration'] as String?;
    _returnFlightId = snapshotData['return_flight_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('flight_durations');

  static Stream<FlightDurationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FlightDurationsRecord.fromSnapshot(s));

  static Future<FlightDurationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FlightDurationsRecord.fromSnapshot(s));

  static FlightDurationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FlightDurationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FlightDurationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FlightDurationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FlightDurationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FlightDurationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFlightDurationsRecordData({
  String? flightId,
  String? origin,
  String? destination,
  String? duration,
  String? returnFlightId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'flight_id': flightId,
      'origin': origin,
      'destination': destination,
      'duration': duration,
      'return_flight_id': returnFlightId,
    }.withoutNulls,
  );

  return firestoreData;
}

class FlightDurationsRecordDocumentEquality
    implements Equality<FlightDurationsRecord> {
  const FlightDurationsRecordDocumentEquality();

  @override
  bool equals(FlightDurationsRecord? e1, FlightDurationsRecord? e2) {
    return e1?.flightId == e2?.flightId &&
        e1?.origin == e2?.origin &&
        e1?.destination == e2?.destination &&
        e1?.duration == e2?.duration &&
        e1?.returnFlightId == e2?.returnFlightId;
  }

  @override
  int hash(FlightDurationsRecord? e) => const ListEquality().hash(
      [e?.flightId, e?.origin, e?.destination, e?.duration, e?.returnFlightId]);

  @override
  bool isValidKey(Object? o) => o is FlightDurationsRecord;
}
