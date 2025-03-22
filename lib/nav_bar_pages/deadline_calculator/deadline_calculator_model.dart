import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'deadline_calculator_widget.dart' show DeadlineCalculatorWidget;
import 'package:flutter/material.dart';

class DeadlineCalculatorModel
    extends FlutterFlowModel<DeadlineCalculatorWidget> {
  ///  Local state fields for this page.

  String selectedDate = '\"\"';

  bool showWarningTextRadio = false;

  bool showWarningTextDate = false;

  String calculatedDeadline = '\"\"';

  String daysRemaining = '\"\"';

  String submissionOpensIn = '\"\"';

  bool requestTypeFR = false;

  bool requestTypeSTF = false;

  bool requestTypeLTF = false;

  String submissionOpen = '\"\"';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;
  // Stores action output result for [Custom Action - calculateRequestDeadline] action in Button widget.
  List<String>? outputCalculation;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
