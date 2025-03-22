import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'modal_bottom_sheet_add_aircraft_type_model.dart';
export 'modal_bottom_sheet_add_aircraft_type_model.dart';

class ModalBottomSheetAddAircraftTypeWidget extends StatefulWidget {
  const ModalBottomSheetAddAircraftTypeWidget({super.key});

  @override
  State<ModalBottomSheetAddAircraftTypeWidget> createState() =>
      _ModalBottomSheetAddAircraftTypeWidgetState();
}

class _ModalBottomSheetAddAircraftTypeWidgetState
    extends State<ModalBottomSheetAddAircraftTypeWidget> {
  late ModalBottomSheetAddAircraftTypeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalBottomSheetAddAircraftTypeModel());

    _model.atA220Value =
        valueOrDefault<bool>(currentUserDocument?.atA220, false);
    _model.atA320Value =
        valueOrDefault<bool>(currentUserDocument?.atA320, false);
    _model.atA330340Value =
        valueOrDefault<bool>(currentUserDocument?.atA330340, false);
    _model.aTBoeingValue =
        valueOrDefault<bool>(currentUserDocument?.aTBeoing, false);
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.airplanemode_active_rounded,
                      color: Color(0xFF9B51E0),
                      size: 32.0,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Text(
                        'Which aircraft types do you fly?',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  lineHeight: 1.3,
                                ),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              constraints: BoxConstraints(
                maxWidth: 500.0,
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFE4D8C8),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Airbus 220',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          AuthUserStreamWidget(
                            builder: (context) => Switch.adaptive(
                              value: _model.atA220Value!,
                              onChanged: (newValue) async {
                                safeSetState(
                                    () => _model.atA220Value = newValue);
                                if (newValue) {
                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    atA220: true,
                                  ));
                                } else {
                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    atA220: false,
                                  ));
                                }
                              },
                              activeColor: Color(0xFF9B51E0),
                              activeTrackColor: Color(0xFF9B51E0),
                              inactiveTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              inactiveThumbColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFE4D8C8),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Airbus 320',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          AuthUserStreamWidget(
                            builder: (context) => Switch.adaptive(
                              value: _model.atA320Value!,
                              onChanged: (newValue) async {
                                safeSetState(
                                    () => _model.atA320Value = newValue);
                                if (newValue) {
                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    atA320: true,
                                  ));
                                } else {
                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    atA320: false,
                                  ));
                                }
                              },
                              activeColor: Color(0xFF9B51E0),
                              activeTrackColor: Color(0xFF9B51E0),
                              inactiveTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              inactiveThumbColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFE4D8C8),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Airbus 330/340',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          AuthUserStreamWidget(
                            builder: (context) => Switch.adaptive(
                              value: _model.atA330340Value!,
                              onChanged: (newValue) async {
                                safeSetState(
                                    () => _model.atA330340Value = newValue);
                                if (newValue) {
                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    atA330340: true,
                                  ));
                                } else {
                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    atA330340: false,
                                  ));
                                }
                              },
                              activeColor: Color(0xFF9B51E0),
                              activeTrackColor: Color(0xFF9B51E0),
                              inactiveTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              inactiveThumbColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFE4D8C8),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Boeing 777',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          AuthUserStreamWidget(
                            builder: (context) => Switch.adaptive(
                              value: _model.aTBoeingValue!,
                              onChanged: (newValue) async {
                                safeSetState(
                                    () => _model.aTBoeingValue = newValue);
                                if (newValue) {
                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    aTBeoing: true,
                                  ));
                                } else {
                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    aTBeoing: false,
                                  ));
                                }
                              },
                              activeColor: Color(0xFF9B51E0),
                              activeTrackColor: Color(0xFF9B51E0),
                              inactiveTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              inactiveThumbColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'Leave',
                  options: FFButtonOptions(
                    height: 22.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0x004B39EF),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Manrope',
                          color: Color(0xFF555555),
                          fontSize: 16.0,
                          letterSpacing: 0.5,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ].divide(SizedBox(height: 24.0)),
            ),
          ].divide(SizedBox(height: 24.0)).around(SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
