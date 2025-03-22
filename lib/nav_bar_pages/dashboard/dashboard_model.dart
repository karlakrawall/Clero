import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  Local state fields for this page.

  String selectedDate = '\"\"';

  String requestType = '\"\"';

  String calculatedDeadline = '\"\"';

  String daysRemaining = '\"\"';

  bool showWarningTextRadio = false;

  bool showWarningTextDate = false;

  bool isInvisible = false;

  String recencyA220 = '\"\"';

  String recencyA320 = '\"\"';

  String recencyA330340 = '\"\"';

  String recencyBoeing = '\"\"';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - calculateRecency] action in Dashboard widget.
  List<String>? calculatedRecency;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
