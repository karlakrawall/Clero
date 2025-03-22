import '';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/out_of_scope/modal_bottom_sheet_salary/modal_bottom_sheet_salary_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'calculate_base_salary_model.dart';
export 'calculate_base_salary_model.dart';

class CalculateBaseSalaryWidget extends StatefulWidget {
  const CalculateBaseSalaryWidget({super.key});

  static String routeName = 'CalculateBaseSalary';
  static String routePath = '/calculateBaseSalary';

  @override
  State<CalculateBaseSalaryWidget> createState() =>
      _CalculateBaseSalaryWidgetState();
}

class _CalculateBaseSalaryWidgetState extends State<CalculateBaseSalaryWidget> {
  late CalculateBaseSalaryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalculateBaseSalaryModel());

    _model.instructor150Value = false;
    _model.noBigaValue = false;
    _model.instructor50Value = false;
    _model.switchValue = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFDFCFB),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFFDFCFB),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FlutterFlowIconButton(
                                    borderRadius: 8.0,
                                    buttonSize: 40.0,
                                    fillColor: Colors.transparent,
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Color(0xFF555555),
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      context.goNamed(
                                        ProfileWidget.routeName,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                  ),
                                  Text(
                                    'Salary Calculation',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black,
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
                                      Icons.info_outline_rounded,
                                      color: Color(0xFF9B51E0),
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Color(0x59000000),
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: Container(
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.4,
                                                child:
                                                    ModalBottomSheetSalaryWidget(
                                                  requestTypeOutput: '',
                                                  selectedDateOutput: '',
                                                  daysRemainingOutput: '',
                                                  submissionOpenOutput: false,
                                                  submissionOpensInOutput: '',
                                                  calculatedDeadlineOutput: '',
                                                  showWarningTextRadioOutput:
                                                      false,
                                                  showWarningTextDateOutput:
                                                      false,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Text(
                            'Select your salary table \"Salärtabelle\"',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFF555555),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: StreamBuilder<List<SalaryTablesRecord>>(
                            stream: querySalaryTablesRecord(
                              queryBuilder: (salaryTablesRecord) =>
                                  salaryTablesRecord.orderBy('salary_table'),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<SalaryTablesRecord>
                                  salaryTableSalaryTablesRecordList =
                                  snapshot.data!;

                              return FlutterFlowDropDown<String>(
                                controller:
                                    _model.salaryTableValueController ??=
                                        FormFieldController<String>(null),
                                options: salaryTableSalaryTablesRecordList
                                    .map((e) => e.salaryTable)
                                    .toList()
                                    .unique((e) => e),
                                onChanged: (val) async {
                                  safeSetState(
                                      () => _model.salaryTableValue = val);
                                  _model.selectedSalaryTable =
                                      _model.salaryTableValue!;
                                  safeSetState(() {});
                                  safeSetState(() {
                                    _model.salaryBandValueController?.reset();
                                    _model.sdjValueController?.reset();
                                    _model.lanuagesValueController?.reset();
                                  });
                                  safeSetState(() {
                                    _model.switchValue = false;
                                    _model.instructor50Value = false;
                                    _model.noBigaValue = false;
                                    _model.instructor150Value = false;
                                  });
                                  _model.selectedSalaryBand =
                                      valueOrDefault<String>(
                                    _model.salaryBandValue,
                                    '\"\"',
                                  );
                                  _model.selectedSDJ = 0;
                                  _model.salarband12cNoBiga = false;
                                  _model.instructor150 = false;
                                  _model.instructor50 = false;
                                  _model.additionalLanguages = null;
                                  safeSetState(() {});
                                  _model.updatedIntregerSDJ =
                                      await actions.integerConversion(
                                    _model.sdjValue!,
                                  );

                                  safeSetState(() {});
                                },
                                width: double.infinity,
                                height: 56.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Manrope',
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                hintText: 'Salary table',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: Colors.white,
                                elevation: 2.0,
                                borderColor: Color(0xFFD3D3D3),
                                borderWidth: 1.5,
                                borderRadius: 12.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                hidesUnderline: true,
                                isOverButton: false,
                                isSearchable: false,
                                isMultiSelect: false,
                              );
                            },
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (_model.selectedSalaryTable != '\"\"')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Text(
                              'Select your salary band \"Salärband\"',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF555555),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        if (_model.selectedSalaryTable != '\"\"')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: StreamBuilder<List<SalaryTablesRecord>>(
                              stream: querySalaryTablesRecord(
                                queryBuilder: (salaryTablesRecord) =>
                                    salaryTablesRecord
                                        .where(
                                          'salary_table',
                                          isEqualTo: _model.selectedSalaryTable,
                                        )
                                        .orderBy('salary_band'),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<SalaryTablesRecord>
                                    salaryBandSalaryTablesRecordList =
                                    snapshot.data!;

                                return FlutterFlowDropDown<String>(
                                  controller:
                                      _model.salaryBandValueController ??=
                                          FormFieldController<String>(null),
                                  options: salaryBandSalaryTablesRecordList
                                      .map((e) => e.salaryBand)
                                      .toList()
                                      .unique((e) => e),
                                  onChanged: (val) async {
                                    safeSetState(
                                        () => _model.salaryBandValue = val);
                                    _model.selectedSalaryBand =
                                        _model.salaryBandValue!;
                                    safeSetState(() {});
                                    safeSetState(() {
                                      _model.instructor50Value = false;
                                      _model.noBigaValue = false;
                                      _model.instructor150Value = false;
                                    });
                                    _model.salarband12cNoBiga = false;
                                    _model.instructor150 = false;
                                    _model.instructor50 = false;
                                    _model.additionalLanguages = null;
                                    safeSetState(() {});
                                  },
                                  width: double.infinity,
                                  height: 56.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  hintText: 'Salary band',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: Colors.white,
                                  elevation: 2.0,
                                  borderColor: Color(0xFFE0E0E0),
                                  borderWidth: 1.5,
                                  borderRadius: 12.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                          ),
                        if (((_model.salaryTableValue == 'I') ||
                                (_model.salaryTableValue == 'II')) &&
                            (_model.salaryBandValue == 'A'))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Instructor (+150CHF)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                Switch.adaptive(
                                  value: _model.instructor150Value!,
                                  onChanged: (newValue) async {
                                    safeSetState(() =>
                                        _model.instructor150Value = newValue);
                                    if (newValue) {
                                      _model.instructor150 = true;
                                      safeSetState(() {});
                                    } else {
                                      _model.instructor150 = false;
                                      safeSetState(() {});
                                    }
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  activeTrackColor:
                                      FlutterFlowTheme.of(context).primary,
                                  inactiveTrackColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  inactiveThumbColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                ),
                              ],
                            ),
                          ),
                        if (((_model.salaryTableValue == 'I') ||
                                (_model.salaryTableValue == 'II')) &&
                            (_model.salaryBandValue == 'C'))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                14.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'No Biga (-250CHF)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                Switch.adaptive(
                                  value: _model.noBigaValue!,
                                  onChanged: (newValue) async {
                                    safeSetState(
                                        () => _model.noBigaValue = newValue);
                                    if (newValue) {
                                      _model.salarband12cNoBiga = true;
                                      safeSetState(() {});
                                    } else {
                                      _model.salarband12cNoBiga = false;
                                      safeSetState(() {});
                                    }
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  activeTrackColor:
                                      FlutterFlowTheme.of(context).primary,
                                  inactiveTrackColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  inactiveThumbColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                ),
                              ],
                            ),
                          ),
                        if (_model.salaryTableValue == 'III')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Instructor (+50CHF)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                Switch.adaptive(
                                  value: _model.instructor50Value!,
                                  onChanged: (newValue) async {
                                    safeSetState(() =>
                                        _model.instructor50Value = newValue);
                                    if (newValue) {
                                      _model.instructor50 = true;
                                      safeSetState(() {});
                                    } else {
                                      _model.instructor50 = false;
                                      safeSetState(() {});
                                    }
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  activeTrackColor:
                                      FlutterFlowTheme.of(context).primary,
                                  inactiveTrackColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  inactiveThumbColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                ),
                              ],
                            ),
                          ),
                        if (_model.salaryTableValue == 'III')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Additional languages',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                Switch.adaptive(
                                  value: _model.switchValue!,
                                  onChanged: (newValue) async {
                                    safeSetState(
                                        () => _model.switchValue = newValue);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  activeTrackColor:
                                      FlutterFlowTheme.of(context).primary,
                                  inactiveTrackColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  inactiveThumbColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                ),
                              ],
                            ),
                          ),
                        if (_model.switchValue ?? true)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.lanuagesValueController ??=
                                  FormFieldController<String>(null),
                              options: ['1', '2', '3', '4', '5'],
                              onChanged: (val) async {
                                safeSetState(() => _model.lanuagesValue = val);
                                _model.outputAdditionalLanguages =
                                    await actions.integerConversion(
                                  _model.lanuagesValue!,
                                );
                                _model.additionalLanguages =
                                    _model.outputAdditionalLanguages;
                                safeSetState(() {});

                                safeSetState(() {});
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              hintText: 'Select number of languages',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Color(0xFFD3D3D3),
                              borderWidth: 1.5,
                              borderRadius: 12.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (_model.selectedSalaryBand != '\"\"')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Text(
                              'Select your salary year \"Salärdienstjahr\"',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF555555),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        if ((_model.selectedSalaryTable != '\"\"') &&
                            (_model.selectedSalaryBand != '\"\"'))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 32.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.sdjValueController ??=
                                  FormFieldController<String>(null),
                              options: <String>[],
                              onChanged: (val) async {
                                safeSetState(() => _model.sdjValue = val);
                                _model.intregerSDJ =
                                    await actions.integerConversion(
                                  _model.sdjValue!,
                                );
                                _model.selectedSDJ = _model.intregerSDJ;
                                safeSetState(() {});

                                safeSetState(() {});
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              hintText: 'SDJ',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Color(0xFFD3D3D3),
                              borderWidth: 1.5,
                              borderRadius: 12.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                  ].divide(SizedBox(height: 32.0)),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 180.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
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
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          safeSetState(() {
                            _model.salaryTableValueController?.reset();
                            _model.salaryBandValueController?.reset();
                            _model.sdjValueController?.reset();
                            _model.lanuagesValueController?.reset();
                          });
                          safeSetState(() {
                            _model.instructor150Value = false;
                            _model.noBigaValue = false;
                            _model.switchValue = false;
                            _model.instructor50Value = false;
                          });
                          _model.selectedSalaryTable = valueOrDefault<String>(
                            _model.salaryTableValue,
                            '\"\"',
                          );
                          _model.selectedSalaryBand = valueOrDefault<String>(
                            _model.salaryBandValue,
                            '\"\"',
                          );
                          _model.selectedSDJ = 0;
                          _model.salarband12cNoBiga = false;
                          _model.instructor150 = false;
                          _model.instructor50 = false;
                          _model.additionalLanguages = null;
                          safeSetState(() {});
                        },
                        text: 'Reset Input',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 56.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Colors.transparent,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Manrope',
                                    color: Color(0xFF555555),
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Color(0xFF555555),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Save & Confirm',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 56.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Colors.black,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Manrope',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
