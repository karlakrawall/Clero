import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_bottom_sheet_add_r_g_c_widget.dart'
    show ModalBottomSheetAddRGCWidget;
import 'package:flutter/material.dart';

class ModalBottomSheetAddRGCModel
    extends FlutterFlowModel<ModalBottomSheetAddRGCWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Month widget.
  String? monthValue;
  FormFieldController<String>? monthValueController;
  // State field(s) for Year widget.
  String? yearValue;
  FormFieldController<String>? yearValueController;
  // Stores action output result for [Custom Action - calculateRecencyDateRGC] action in Button widget.
  String? recencyDateRGC;
  // Stores action output result for [Custom Action - calculateGracePeriod] action in Button widget.
  String? gracePeriod;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
