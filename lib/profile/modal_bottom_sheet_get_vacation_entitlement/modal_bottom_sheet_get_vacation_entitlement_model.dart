import '/flutter_flow/flutter_flow_util.dart';
import 'modal_bottom_sheet_get_vacation_entitlement_widget.dart'
    show ModalBottomSheetGetVacationEntitlementWidget;
import 'package:flutter/material.dart';

class ModalBottomSheetGetVacationEntitlementModel
    extends FlutterFlowModel<ModalBottomSheetGetVacationEntitlementWidget> {
  ///  Local state fields for this component.

  bool birthdayIsSet = false;

  bool entryDateIsSet = false;

  bool vacationEntitlementOP = false;

  ///  State fields for stateful widgets in this component.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Custom Action - calculatePercentage] action in Button widget.
  String? vacationEntitlementOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
