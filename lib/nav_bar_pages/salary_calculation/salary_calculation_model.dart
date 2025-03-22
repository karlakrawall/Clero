import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'salary_calculation_widget.dart' show SalaryCalculationWidget;
import 'package:flutter/material.dart';

class SalaryCalculationModel extends FlutterFlowModel<SalaryCalculationWidget> {
  ///  Local state fields for this page.

  bool addFlights = false;

  bool warningTextSalary = false;

  bool warningTextVacation = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - sumFlightDurationsAsDouble] action in Button widget.
  double? totalFlightHours;
  // Stores action output result for [Custom Action - calculateSalaryForBlockHours] action in Button widget.
  double? salaryForBlockHours;
  // Stores action output result for [Custom Action - calculateVacationPayment] action in Button widget.
  double? vacationPayment;
  // Stores action output result for [Custom Action - calculateTotalSalary] action in Button widget.
  double? totalSalary;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
