import '/flutter_flow/flutter_flow_util.dart';
import 'modal_bottom_sheet_add_medical_date_widget.dart'
    show ModalBottomSheetAddMedicalDateWidget;
import 'package:flutter/material.dart';

class ModalBottomSheetAddMedicalDateModel
    extends FlutterFlowModel<ModalBottomSheetAddMedicalDateWidget> {
  ///  Local state fields for this component.

  bool birthdayIsSet = false;

  bool entryDateIsSet = false;

  bool vacationEntitlementOP = false;

  ///  State fields for stateful widgets in this component.

  DateTime? datePicked;
  // Stores action output result for [Custom Action - formatMedicalDate] action in Button widget.
  String? formatededicalDate;
  // Stores action output result for [Custom Action - addFiveYearsToDate] action in Button widget.
  String? medicalDeadline;
  // Stores action output result for [Custom Action - formatMedicalDate] action in Button widget.
  String? formatedMedicalDeadline;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
