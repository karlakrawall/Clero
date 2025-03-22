import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SalaryTablesRecord extends FirestoreRecord {
  SalaryTablesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "salary_table" field.
  String? _salaryTable;
  String get salaryTable => _salaryTable ?? '';
  bool hasSalaryTable() => _salaryTable != null;

  // "salary_band" field.
  String? _salaryBand;
  String get salaryBand => _salaryBand ?? '';
  bool hasSalaryBand() => _salaryBand != null;

  // "base_salary" field.
  int? _baseSalary;
  int get baseSalary => _baseSalary ?? 0;
  bool hasBaseSalary() => _baseSalary != null;

  // "sdj" field.
  String? _sdj;
  String get sdj => _sdj ?? '';
  bool hasSdj() => _sdj != null;

  void _initializeFields() {
    _salaryTable = snapshotData['salary_table'] as String?;
    _salaryBand = snapshotData['salary_band'] as String?;
    _baseSalary = castToType<int>(snapshotData['base_salary']);
    _sdj = snapshotData['sdj'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('salary_tables');

  static Stream<SalaryTablesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SalaryTablesRecord.fromSnapshot(s));

  static Future<SalaryTablesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SalaryTablesRecord.fromSnapshot(s));

  static SalaryTablesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SalaryTablesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SalaryTablesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SalaryTablesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SalaryTablesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SalaryTablesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSalaryTablesRecordData({
  String? salaryTable,
  String? salaryBand,
  int? baseSalary,
  String? sdj,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'salary_table': salaryTable,
      'salary_band': salaryBand,
      'base_salary': baseSalary,
      'sdj': sdj,
    }.withoutNulls,
  );

  return firestoreData;
}

class SalaryTablesRecordDocumentEquality
    implements Equality<SalaryTablesRecord> {
  const SalaryTablesRecordDocumentEquality();

  @override
  bool equals(SalaryTablesRecord? e1, SalaryTablesRecord? e2) {
    return e1?.salaryTable == e2?.salaryTable &&
        e1?.salaryBand == e2?.salaryBand &&
        e1?.baseSalary == e2?.baseSalary &&
        e1?.sdj == e2?.sdj;
  }

  @override
  int hash(SalaryTablesRecord? e) => const ListEquality()
      .hash([e?.salaryTable, e?.salaryBand, e?.baseSalary, e?.sdj]);

  @override
  bool isValidKey(Object? o) => o is SalaryTablesRecord;
}
