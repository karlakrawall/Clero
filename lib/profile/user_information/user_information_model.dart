import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_information_widget.dart' show UserInformationWidget;
import 'package:flutter/material.dart';

class UserInformationModel extends FlutterFlowModel<UserInformationWidget> {
  ///  Local state fields for this page.

  String? birthday;

  String? technicalEntryDate;

  bool info = true;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
