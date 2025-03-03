import '/flutter_flow/flutter_flow_util.dart';
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
