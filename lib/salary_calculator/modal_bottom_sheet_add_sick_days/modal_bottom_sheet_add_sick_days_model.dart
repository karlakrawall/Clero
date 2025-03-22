import '/flutter_flow/flutter_flow_util.dart';
import 'modal_bottom_sheet_add_sick_days_widget.dart'
    show ModalBottomSheetAddSickDaysWidget;
import 'package:flutter/material.dart';

class ModalBottomSheetAddSickDaysModel
    extends FlutterFlowModel<ModalBottomSheetAddSickDaysWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PaidSickDays widget.
  FocusNode? paidSickDaysFocusNode;
  TextEditingController? paidSickDaysTextController;
  String? Function(BuildContext, String?)? paidSickDaysTextControllerValidator;
  // Stores action output result for [Custom Action - calculateFlightHoursFromDays] action in Button widget.
  String? flightHours;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paidSickDaysFocusNode?.dispose();
    paidSickDaysTextController?.dispose();
  }
}
