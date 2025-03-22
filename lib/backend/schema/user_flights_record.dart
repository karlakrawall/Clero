import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserFlightsRecord extends FirestoreRecord {
  UserFlightsRecord._(
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

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "added_at" field.
  DateTime? _addedAt;
  DateTime? get addedAt => _addedAt;
  bool hasAddedAt() => _addedAt != null;

  void _initializeFields() {
    _flightId = snapshotData['flight_id'] as String?;
    _origin = snapshotData['origin'] as String?;
    _destination = snapshotData['destination'] as String?;
    _duration = snapshotData['duration'] as String?;
    _returnFlightId = snapshotData['return_flight_id'] as String?;
    _userId = snapshotData['user_id'] as String?;
    _addedAt = snapshotData['added_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_flights');

  static Stream<UserFlightsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserFlightsRecord.fromSnapshot(s));

  static Future<UserFlightsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserFlightsRecord.fromSnapshot(s));

  static UserFlightsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserFlightsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserFlightsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserFlightsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserFlightsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserFlightsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserFlightsRecordData({
  String? flightId,
  String? origin,
  String? destination,
  String? duration,
  String? returnFlightId,
  String? userId,
  DateTime? addedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'flight_id': flightId,
      'origin': origin,
      'destination': destination,
      'duration': duration,
      'return_flight_id': returnFlightId,
      'user_id': userId,
      'added_at': addedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserFlightsRecordDocumentEquality implements Equality<UserFlightsRecord> {
  const UserFlightsRecordDocumentEquality();

  @override
  bool equals(UserFlightsRecord? e1, UserFlightsRecord? e2) {
    return e1?.flightId == e2?.flightId &&
        e1?.origin == e2?.origin &&
        e1?.destination == e2?.destination &&
        e1?.duration == e2?.duration &&
        e1?.returnFlightId == e2?.returnFlightId &&
        e1?.userId == e2?.userId &&
        e1?.addedAt == e2?.addedAt;
  }

  @override
  int hash(UserFlightsRecord? e) => const ListEquality().hash([
        e?.flightId,
        e?.origin,
        e?.destination,
        e?.duration,
        e?.returnFlightId,
        e?.userId,
        e?.addedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is UserFlightsRecord;
}
