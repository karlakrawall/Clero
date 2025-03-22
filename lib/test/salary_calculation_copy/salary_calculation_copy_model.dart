import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'salary_calculation_copy_widget.dart' show SalaryCalculationCopyWidget;
import 'package:flutter/material.dart';

class SalaryCalculationCopyModel
    extends FlutterFlowModel<SalaryCalculationCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for BlockHours widget.
  FocusNode? blockHoursFocusNode;
  TextEditingController? blockHoursTextController;
  String? Function(BuildContext, String?)? blockHoursTextControllerValidator;
  // State field(s) for BaseSalary widget.
  FocusNode? baseSalaryFocusNode;
  TextEditingController? baseSalaryTextController;
  String? Function(BuildContext, String?)? baseSalaryTextControllerValidator;
  // State field(s) for VacationEntitlement widget.
  FocusNode? vacationEntitlementFocusNode;
  TextEditingController? vacationEntitlementTextController;
  String? Function(BuildContext, String?)?
      vacationEntitlementTextControllerValidator;
  // Stores action output result for [Custom Action - calculateVacationPayment] action in Button widget.
  double? vacationPayOutput;
  // Stores action output result for [Custom Action - calculateSalaryForBlockHours] action in Button widget.
  double? salaryForBlockHoursOutput;
  // Stores action output result for [Custom Action - calculateTotalSalary] action in Button widget.
  double? totalSalaryOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    blockHoursFocusNode?.dispose();
    blockHoursTextController?.dispose();

    baseSalaryFocusNode?.dispose();
    baseSalaryTextController?.dispose();

    vacationEntitlementFocusNode?.dispose();
    vacationEntitlementTextController?.dispose();
  }
}
