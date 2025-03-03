import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'calculation_widget.dart' show CalculationWidget;
import 'package:flutter/material.dart';

class CalculationModel extends FlutterFlowModel<CalculationWidget> {
  ///  Local state fields for this page.

  String selectedDate = '\"\"';

  String calculatedDeadline = 'deadlineOutput';

  String daysRemaining = '\" \"';

  String requestType = '\" \"';

  bool showWarningTextRadio = false;

  bool showWarningTextDate = false;

  bool submissionOpen = true;

  String submissionOpensIn = '\" \"';

  ///  State fields for stateful widgets in this page.

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
