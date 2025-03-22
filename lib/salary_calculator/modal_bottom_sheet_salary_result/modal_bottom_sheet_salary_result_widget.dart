import '';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'modal_bottom_sheet_salary_result_model.dart';
export 'modal_bottom_sheet_salary_result_model.dart';

class ModalBottomSheetSalaryResultWidget extends StatefulWidget {
  const ModalBottomSheetSalaryResultWidget({
    super.key,
    String? requestTypeOutput,
    required this.selectedDateOutput,
    required this.daysRemainingOutput,
    required this.submissionOpenOutput,
    required this.submissionOpensInOutput,
    required this.calculatedDeadlineOutput,
    bool? showWarningTextRadioOutput,
    required this.showWarningTextDateOutput,
  })  : this.requestTypeOutput = requestTypeOutput ?? '',
        this.showWarningTextRadioOutput = showWarningTextRadioOutput ?? true;

  final String requestTypeOutput;
  final String? selectedDateOutput;
  final String? daysRemainingOutput;
  final bool? submissionOpenOutput;
  final String? submissionOpensInOutput;
  final String? calculatedDeadlineOutput;
  final bool showWarningTextRadioOutput;
  final bool? showWarningTextDateOutput;

  @override
  State<ModalBottomSheetSalaryResultWidget> createState() =>
      _ModalBottomSheetSalaryResultWidgetState();
}

class _ModalBottomSheetSalaryResultWidgetState
    extends State<ModalBottomSheetSalaryResultWidget> {
  late ModalBottomSheetSalaryResultModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalBottomSheetSalaryResultModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(0.0),
        bottomRight: Radius.circular(0.0),
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 50.0,
              color: Color(0x19000000),
              offset: Offset(
                0.0,
                0.0,
              ),
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 48.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.transparent,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Text(
                            'Salary Calculation',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: Colors.transparent,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              Icons.close_rounded,
                              color: Color(0xFF555555),
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.lightbulb_outline_sharp,
                    color: Color(0xFF9B51E0),
                    size: 24.0,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'We calculate your salary based on the following factors:\n\n',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          TextSpan(
                            text: 'Base Salary: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: 'Your fixed monthly salary.\n\n',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: 'Block Hours: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: 'The total number of hours you worked.\n\n',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: 'Hourly Rate: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: 'Your base salary divided by 90.\n\n',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: 'Salary for Block Hours:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Your hourly rate multiplied by the block hours.\n\n',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: 'Vacation Pay: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text:
                                'A percentage of your salary for block hours, based on your vacation entitlement.\n\n',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text:
                                '💰 Total Salary = Salary for Block Hours + Vacation Pay',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Manrope',
                              color: Colors.black,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
