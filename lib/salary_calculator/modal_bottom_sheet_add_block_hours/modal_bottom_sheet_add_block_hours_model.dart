import '/flutter_flow/flutter_flow_util.dart';
import 'modal_bottom_sheet_add_block_hours_widget.dart'
    show ModalBottomSheetAddBlockHoursWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ModalBottomSheetAddBlockHoursModel
    extends FlutterFlowModel<ModalBottomSheetAddBlockHoursWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ZRH widget.
  FocusNode? zrhFocusNode;
  TextEditingController? zrhTextController;
  String? Function(BuildContext, String?)? zrhTextControllerValidator;
  // State field(s) for HAM widget.
  FocusNode? hamFocusNode;
  TextEditingController? hamTextController;
  String? Function(BuildContext, String?)? hamTextControllerValidator;
  // State field(s) for TextFieldHours widget.
  FocusNode? textFieldHoursFocusNode;
  TextEditingController? textFieldHoursTextController;
  final textFieldHoursMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)?
      textFieldHoursTextControllerValidator;
  // State field(s) for TextFieldMinutes widget.
  final textFieldMinutesKey = GlobalKey();
  FocusNode? textFieldMinutesFocusNode;
  TextEditingController? textFieldMinutesTextController;
  String? textFieldMinutesSelectedOption;
  final textFieldMinutesMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)?
      textFieldMinutesTextControllerValidator;
  // Stores action output result for [Custom Action - autoFillTwoDigits] action in Button widget.
  String? durationHours;
  // Stores action output result for [Custom Action - autoFillTwoDigits] action in Button widget.
  String? durationMinutes;
  // Stores action output result for [Custom Action - formatDuration] action in Button widget.
  String? durationhhmm;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    zrhFocusNode?.dispose();
    zrhTextController?.dispose();

    hamFocusNode?.dispose();
    hamTextController?.dispose();

    textFieldHoursFocusNode?.dispose();
    textFieldHoursTextController?.dispose();

    textFieldMinutesFocusNode?.dispose();
  }
}
