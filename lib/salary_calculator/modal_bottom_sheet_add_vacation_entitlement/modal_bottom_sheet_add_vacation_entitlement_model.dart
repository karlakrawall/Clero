import '/flutter_flow/flutter_flow_util.dart';
import 'modal_bottom_sheet_add_vacation_entitlement_widget.dart'
    show ModalBottomSheetAddVacationEntitlementWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ModalBottomSheetAddVacationEntitlementModel
    extends FlutterFlowModel<ModalBottomSheetAddVacationEntitlementWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for vacationEntitlementTextField widget.
  FocusNode? vacationEntitlementTextFieldFocusNode;
  TextEditingController? vacationEntitlementTextFieldTextController;
  final vacationEntitlementTextFieldMask =
      MaskTextInputFormatter(mask: '##.##');
  String? Function(BuildContext, String?)?
      vacationEntitlementTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    vacationEntitlementTextFieldFocusNode?.dispose();
    vacationEntitlementTextFieldTextController?.dispose();
  }
}
