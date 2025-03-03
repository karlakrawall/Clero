import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeadlinesRecord extends FirestoreRecord {
  DeadlinesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "deadline" field.
  DateTime? _deadline;
  DateTime? get deadline => _deadline;
  bool hasDeadline() => _deadline != null;

  // "repeatsMonthly" field.
  bool? _repeatsMonthly;
  bool get repeatsMonthly => _repeatsMonthly ?? false;
  bool hasRepeatsMonthly() => _repeatsMonthly != null;

  // "iconImage" field.
  String? _iconImage;
  String get iconImage => _iconImage ?? '';
  bool hasIconImage() => _iconImage != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _deadline = snapshotData['deadline'] as DateTime?;
    _repeatsMonthly = snapshotData['repeatsMonthly'] as bool?;
    _iconImage = snapshotData['iconImage'] as String?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('deadlines');

  static Stream<DeadlinesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeadlinesRecord.fromSnapshot(s));

  static Future<DeadlinesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeadlinesRecord.fromSnapshot(s));

  static DeadlinesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeadlinesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeadlinesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeadlinesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeadlinesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeadlinesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeadlinesRecordData({
  String? name,
  DateTime? deadline,
  bool? repeatsMonthly,
  String? iconImage,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'deadline': deadline,
      'repeatsMonthly': repeatsMonthly,
      'iconImage': iconImage,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeadlinesRecordDocumentEquality implements Equality<DeadlinesRecord> {
  const DeadlinesRecordDocumentEquality();

  @override
  bool equals(DeadlinesRecord? e1, DeadlinesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.deadline == e2?.deadline &&
        e1?.repeatsMonthly == e2?.repeatsMonthly &&
        e1?.iconImage == e2?.iconImage &&
        e1?.type == e2?.type;
  }

  @override
  int hash(DeadlinesRecord? e) => const ListEquality()
      .hash([e?.name, e?.deadline, e?.repeatsMonthly, e?.iconImage, e?.type]);

  @override
  bool isValidKey(Object? o) => o is DeadlinesRecord;
}
