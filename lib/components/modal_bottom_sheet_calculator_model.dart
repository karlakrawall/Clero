import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_bottom_sheet_calculator_widget.dart'
    show ModalBottomSheetCalculatorWidget;
import 'package:flutter/material.dart';

class ModalBottomSheetCalculatorModel
    extends FlutterFlowModel<ModalBottomSheetCalculatorWidget> {
  ///  Local state fields for this component.

  String selectedDate = '\"\"';

  String requestType = '\"\"';

  bool showWarningTextRadio = false;

  bool showWarningTextDate = false;

  String calculatedDeadline = '\"\"';

  String daysRemaining = '\"\"';

  String submissionOpensIn = '\"\"';

  bool submissionOpen = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  DateTime? datePicked;
  // Stores action output result for [Custom Action - calculateRequestDeadline] action in Button widget.
  List<String>? deadlineOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
