import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'calculate_base_salary_widget.dart' show CalculateBaseSalaryWidget;
import 'package:flutter/material.dart';

class CalculateBaseSalaryModel
    extends FlutterFlowModel<CalculateBaseSalaryWidget> {
  ///  Local state fields for this page.

  String selectedSalaryTable = '\"\"';

  String selectedSalaryBand = '\"\"';

  int? selectedSDJ = 0;

  bool? salarband12cNoBiga = false;

  bool? instructor150 = false;

  bool? instructor50;

  int? additionalLanguages;

  int? finalSalary;

  bool info = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for SalaryTable widget.
  String? salaryTableValue;
  FormFieldController<String>? salaryTableValueController;
  // Stores action output result for [Custom Action - integerConversion] action in SalaryTable widget.
  int? updatedIntregerSDJ;
  // State field(s) for SalaryBand widget.
  String? salaryBandValue;
  FormFieldController<String>? salaryBandValueController;
  // State field(s) for Instructor150 widget.
  bool? instructor150Value;
  // State field(s) for NoBiga widget.
  bool? noBigaValue;
  // State field(s) for Instructor50 widget.
  bool? instructor50Value;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for Lanuages widget.
  String? lanuagesValue;
  FormFieldController<String>? lanuagesValueController;
  // Stores action output result for [Custom Action - integerConversion] action in Lanuages widget.
  int? outputAdditionalLanguages;
  // State field(s) for SDJ widget.
  String? sdjValue;
  FormFieldController<String>? sdjValueController;
  // Stores action output result for [Custom Action - integerConversion] action in SDJ widget.
  int? intregerSDJ;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
