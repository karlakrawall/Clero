import '/flutter_flow/flutter_flow_util.dart';
import 'modal_bottom_sheet_add_base_salary_widget.dart'
    show ModalBottomSheetAddBaseSalaryWidget;
import 'package:flutter/material.dart';

class ModalBottomSheetAddBaseSalaryModel
    extends FlutterFlowModel<ModalBottomSheetAddBaseSalaryWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for BlockHours widget.
  FocusNode? blockHoursFocusNode;
  TextEditingController? blockHoursTextController;
  String? Function(BuildContext, String?)? blockHoursTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    blockHoursFocusNode?.dispose();
    blockHoursTextController?.dispose();
  }
}
