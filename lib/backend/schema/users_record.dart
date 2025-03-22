import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "salary_table" field.
  String? _salaryTable;
  String get salaryTable => _salaryTable ?? '';
  bool hasSalaryTable() => _salaryTable != null;

  // "salary_band" field.
  String? _salaryBand;
  String get salaryBand => _salaryBand ?? '';
  bool hasSalaryBand() => _salaryBand != null;

  // "sdj" field.
  int? _sdj;
  int get sdj => _sdj ?? 0;
  bool hasSdj() => _sdj != null;

  // "notifications" field.
  bool? _notifications;
  bool get notifications => _notifications ?? false;
  bool hasNotifications() => _notifications != null;

  // "AT_A320" field.
  bool? _atA320;
  bool get atA320 => _atA320 ?? false;
  bool hasAtA320() => _atA320 != null;

  // "AT_A220" field.
  bool? _atA220;
  bool get atA220 => _atA220 ?? false;
  bool hasAtA220() => _atA220 != null;

  // "AT_A330340" field.
  bool? _atA330340;
  bool get atA330340 => _atA330340 ?? false;
  bool hasAtA330340() => _atA330340 != null;

  // "AT_Beoing" field.
  bool? _aTBeoing;
  bool get aTBeoing => _aTBeoing ?? false;
  bool hasATBeoing() => _aTBeoing != null;

  // "recencyDateA220" field.
  String? _recencyDateA220;
  String get recencyDateA220 => _recencyDateA220 ?? '';
  bool hasRecencyDateA220() => _recencyDateA220 != null;

  // "recencyDateA320" field.
  String? _recencyDateA320;
  String get recencyDateA320 => _recencyDateA320 ?? '';
  bool hasRecencyDateA320() => _recencyDateA320 != null;

  // "recencyDateA330340" field.
  String? _recencyDateA330340;
  String get recencyDateA330340 => _recencyDateA330340 ?? '';
  bool hasRecencyDateA330340() => _recencyDateA330340 != null;

  // "recencyDateBeoing" field.
  String? _recencyDateBeoing;
  String get recencyDateBeoing => _recencyDateBeoing ?? '';
  bool hasRecencyDateBeoing() => _recencyDateBeoing != null;

  // "base_salary" field.
  String? _baseSalary;
  String get baseSalary => _baseSalary ?? '';
  bool hasBaseSalary() => _baseSalary != null;

  // "lastLandingMonthA220" field.
  String? _lastLandingMonthA220;
  String get lastLandingMonthA220 => _lastLandingMonthA220 ?? '';
  bool hasLastLandingMonthA220() => _lastLandingMonthA220 != null;

  // "lastLandingYearA220" field.
  String? _lastLandingYearA220;
  String get lastLandingYearA220 => _lastLandingYearA220 ?? '';
  bool hasLastLandingYearA220() => _lastLandingYearA220 != null;

  // "lastLandingMonthA320" field.
  String? _lastLandingMonthA320;
  String get lastLandingMonthA320 => _lastLandingMonthA320 ?? '';
  bool hasLastLandingMonthA320() => _lastLandingMonthA320 != null;

  // "lastLandingYearA320" field.
  String? _lastLandingYearA320;
  String get lastLandingYearA320 => _lastLandingYearA320 ?? '';
  bool hasLastLandingYearA320() => _lastLandingYearA320 != null;

  // "lastLandingMonthA330340" field.
  String? _lastLandingMonthA330340;
  String get lastLandingMonthA330340 => _lastLandingMonthA330340 ?? '';
  bool hasLastLandingMonthA330340() => _lastLandingMonthA330340 != null;

  // "lastLandingYearA330340" field.
  String? _lastLandingYearA330340;
  String get lastLandingYearA330340 => _lastLandingYearA330340 ?? '';
  bool hasLastLandingYearA330340() => _lastLandingYearA330340 != null;

  // "lastLandingMonthBoeing" field.
  String? _lastLandingMonthBoeing;
  String get lastLandingMonthBoeing => _lastLandingMonthBoeing ?? '';
  bool hasLastLandingMonthBoeing() => _lastLandingMonthBoeing != null;

  // "lastLandingYearBoeing" field.
  String? _lastLandingYearBoeing;
  String get lastLandingYearBoeing => _lastLandingYearBoeing ?? '';
  bool hasLastLandingYearBoeing() => _lastLandingYearBoeing != null;

  // "vacationeEntitlement" field.
  String? _vacationeEntitlement;
  String get vacationeEntitlement => _vacationeEntitlement ?? '';
  bool hasVacationeEntitlement() => _vacationeEntitlement != null;

  // "recencyDateRGC" field.
  String? _recencyDateRGC;
  String get recencyDateRGC => _recencyDateRGC ?? '';
  bool hasRecencyDateRGC() => _recencyDateRGC != null;

  // "lastMonthRGC" field.
  String? _lastMonthRGC;
  String get lastMonthRGC => _lastMonthRGC ?? '';
  bool hasLastMonthRGC() => _lastMonthRGC != null;

  // "lastYearRGC" field.
  String? _lastYearRGC;
  String get lastYearRGC => _lastYearRGC ?? '';
  bool hasLastYearRGC() => _lastYearRGC != null;

  // "medicalDeadline" field.
  String? _medicalDeadline;
  String get medicalDeadline => _medicalDeadline ?? '';
  bool hasMedicalDeadline() => _medicalDeadline != null;

  // "AgreeToTermsAndConditions" field.
  bool? _agreeToTermsAndConditions;
  bool get agreeToTermsAndConditions => _agreeToTermsAndConditions ?? false;
  bool hasAgreeToTermsAndConditions() => _agreeToTermsAndConditions != null;

  // "TaCtimeStamp" field.
  DateTime? _taCtimeStamp;
  DateTime? get taCtimeStamp => _taCtimeStamp;
  bool hasTaCtimeStamp() => _taCtimeStamp != null;

  // "PrivacyPolicy" field.
  bool? _privacyPolicy;
  bool get privacyPolicy => _privacyPolicy ?? false;
  bool hasPrivacyPolicy() => _privacyPolicy != null;

  // "PPtimeStamp" field.
  DateTime? _pPtimeStamp;
  DateTime? get pPtimeStamp => _pPtimeStamp;
  bool hasPPtimeStamp() => _pPtimeStamp != null;

  // "rgcGracePeriod" field.
  String? _rgcGracePeriod;
  String get rgcGracePeriod => _rgcGracePeriod ?? '';
  bool hasRgcGracePeriod() => _rgcGracePeriod != null;

  // "MedicalDate" field.
  String? _medicalDate;
  String get medicalDate => _medicalDate ?? '';
  bool hasMedicalDate() => _medicalDate != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _salaryTable = snapshotData['salary_table'] as String?;
    _salaryBand = snapshotData['salary_band'] as String?;
    _sdj = castToType<int>(snapshotData['sdj']);
    _notifications = snapshotData['notifications'] as bool?;
    _atA320 = snapshotData['AT_A320'] as bool?;
    _atA220 = snapshotData['AT_A220'] as bool?;
    _atA330340 = snapshotData['AT_A330340'] as bool?;
    _aTBeoing = snapshotData['AT_Beoing'] as bool?;
    _recencyDateA220 = snapshotData['recencyDateA220'] as String?;
    _recencyDateA320 = snapshotData['recencyDateA320'] as String?;
    _recencyDateA330340 = snapshotData['recencyDateA330340'] as String?;
    _recencyDateBeoing = snapshotData['recencyDateBeoing'] as String?;
    _baseSalary = snapshotData['base_salary'] as String?;
    _lastLandingMonthA220 = snapshotData['lastLandingMonthA220'] as String?;
    _lastLandingYearA220 = snapshotData['lastLandingYearA220'] as String?;
    _lastLandingMonthA320 = snapshotData['lastLandingMonthA320'] as String?;
    _lastLandingYearA320 = snapshotData['lastLandingYearA320'] as String?;
    _lastLandingMonthA330340 =
        snapshotData['lastLandingMonthA330340'] as String?;
    _lastLandingYearA330340 = snapshotData['lastLandingYearA330340'] as String?;
    _lastLandingMonthBoeing = snapshotData['lastLandingMonthBoeing'] as String?;
    _lastLandingYearBoeing = snapshotData['lastLandingYearBoeing'] as String?;
    _vacationeEntitlement = snapshotData['vacationeEntitlement'] as String?;
    _recencyDateRGC = snapshotData['recencyDateRGC'] as String?;
    _lastMonthRGC = snapshotData['lastMonthRGC'] as String?;
    _lastYearRGC = snapshotData['lastYearRGC'] as String?;
    _medicalDeadline = snapshotData['medicalDeadline'] as String?;
    _agreeToTermsAndConditions =
        snapshotData['AgreeToTermsAndConditions'] as bool?;
    _taCtimeStamp = snapshotData['TaCtimeStamp'] as DateTime?;
    _privacyPolicy = snapshotData['PrivacyPolicy'] as bool?;
    _pPtimeStamp = snapshotData['PPtimeStamp'] as DateTime?;
    _rgcGracePeriod = snapshotData['rgcGracePeriod'] as String?;
    _medicalDate = snapshotData['MedicalDate'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? role,
  String? phoneNumber,
  String? photoUrl,
  String? salaryTable,
  String? salaryBand,
  int? sdj,
  bool? notifications,
  bool? atA320,
  bool? atA220,
  bool? atA330340,
  bool? aTBeoing,
  String? recencyDateA220,
  String? recencyDateA320,
  String? recencyDateA330340,
  String? recencyDateBeoing,
  String? baseSalary,
  String? lastLandingMonthA220,
  String? lastLandingYearA220,
  String? lastLandingMonthA320,
  String? lastLandingYearA320,
  String? lastLandingMonthA330340,
  String? lastLandingYearA330340,
  String? lastLandingMonthBoeing,
  String? lastLandingYearBoeing,
  String? vacationeEntitlement,
  String? recencyDateRGC,
  String? lastMonthRGC,
  String? lastYearRGC,
  String? medicalDeadline,
  bool? agreeToTermsAndConditions,
  DateTime? taCtimeStamp,
  bool? privacyPolicy,
  DateTime? pPtimeStamp,
  String? rgcGracePeriod,
  String? medicalDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'role': role,
      'phone_number': phoneNumber,
      'photo_url': photoUrl,
      'salary_table': salaryTable,
      'salary_band': salaryBand,
      'sdj': sdj,
      'notifications': notifications,
      'AT_A320': atA320,
      'AT_A220': atA220,
      'AT_A330340': atA330340,
      'AT_Beoing': aTBeoing,
      'recencyDateA220': recencyDateA220,
      'recencyDateA320': recencyDateA320,
      'recencyDateA330340': recencyDateA330340,
      'recencyDateBeoing': recencyDateBeoing,
      'base_salary': baseSalary,
      'lastLandingMonthA220': lastLandingMonthA220,
      'lastLandingYearA220': lastLandingYearA220,
      'lastLandingMonthA320': lastLandingMonthA320,
      'lastLandingYearA320': lastLandingYearA320,
      'lastLandingMonthA330340': lastLandingMonthA330340,
      'lastLandingYearA330340': lastLandingYearA330340,
      'lastLandingMonthBoeing': lastLandingMonthBoeing,
      'lastLandingYearBoeing': lastLandingYearBoeing,
      'vacationeEntitlement': vacationeEntitlement,
      'recencyDateRGC': recencyDateRGC,
      'lastMonthRGC': lastMonthRGC,
      'lastYearRGC': lastYearRGC,
      'medicalDeadline': medicalDeadline,
      'AgreeToTermsAndConditions': agreeToTermsAndConditions,
      'TaCtimeStamp': taCtimeStamp,
      'PrivacyPolicy': privacyPolicy,
      'PPtimeStamp': pPtimeStamp,
      'rgcGracePeriod': rgcGracePeriod,
      'MedicalDate': medicalDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.role == e2?.role &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.salaryTable == e2?.salaryTable &&
        e1?.salaryBand == e2?.salaryBand &&
        e1?.sdj == e2?.sdj &&
        e1?.notifications == e2?.notifications &&
        e1?.atA320 == e2?.atA320 &&
        e1?.atA220 == e2?.atA220 &&
        e1?.atA330340 == e2?.atA330340 &&
        e1?.aTBeoing == e2?.aTBeoing &&
        e1?.recencyDateA220 == e2?.recencyDateA220 &&
        e1?.recencyDateA320 == e2?.recencyDateA320 &&
        e1?.recencyDateA330340 == e2?.recencyDateA330340 &&
        e1?.recencyDateBeoing == e2?.recencyDateBeoing &&
        e1?.baseSalary == e2?.baseSalary &&
        e1?.lastLandingMonthA220 == e2?.lastLandingMonthA220 &&
        e1?.lastLandingYearA220 == e2?.lastLandingYearA220 &&
        e1?.lastLandingMonthA320 == e2?.lastLandingMonthA320 &&
        e1?.lastLandingYearA320 == e2?.lastLandingYearA320 &&
        e1?.lastLandingMonthA330340 == e2?.lastLandingMonthA330340 &&
        e1?.lastLandingYearA330340 == e2?.lastLandingYearA330340 &&
        e1?.lastLandingMonthBoeing == e2?.lastLandingMonthBoeing &&
        e1?.lastLandingYearBoeing == e2?.lastLandingYearBoeing &&
        e1?.vacationeEntitlement == e2?.vacationeEntitlement &&
        e1?.recencyDateRGC == e2?.recencyDateRGC &&
        e1?.lastMonthRGC == e2?.lastMonthRGC &&
        e1?.lastYearRGC == e2?.lastYearRGC &&
        e1?.medicalDeadline == e2?.medicalDeadline &&
        e1?.agreeToTermsAndConditions == e2?.agreeToTermsAndConditions &&
        e1?.taCtimeStamp == e2?.taCtimeStamp &&
        e1?.privacyPolicy == e2?.privacyPolicy &&
        e1?.pPtimeStamp == e2?.pPtimeStamp &&
        e1?.rgcGracePeriod == e2?.rgcGracePeriod &&
        e1?.medicalDate == e2?.medicalDate;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.role,
        e?.phoneNumber,
        e?.photoUrl,
        e?.salaryTable,
        e?.salaryBand,
        e?.sdj,
        e?.notifications,
        e?.atA320,
        e?.atA220,
        e?.atA330340,
        e?.aTBeoing,
        e?.recencyDateA220,
        e?.recencyDateA320,
        e?.recencyDateA330340,
        e?.recencyDateBeoing,
        e?.baseSalary,
        e?.lastLandingMonthA220,
        e?.lastLandingYearA220,
        e?.lastLandingMonthA320,
        e?.lastLandingYearA320,
        e?.lastLandingMonthA330340,
        e?.lastLandingYearA330340,
        e?.lastLandingMonthBoeing,
        e?.lastLandingYearBoeing,
        e?.vacationeEntitlement,
        e?.recencyDateRGC,
        e?.lastMonthRGC,
        e?.lastYearRGC,
        e?.medicalDeadline,
        e?.agreeToTermsAndConditions,
        e?.taCtimeStamp,
        e?.privacyPolicy,
        e?.pPtimeStamp,
        e?.rgcGracePeriod,
        e?.medicalDate
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
