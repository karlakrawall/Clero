import '';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'terms_and_conditions_model.dart';
export 'terms_and_conditions_model.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key});

  static String routeName = 'TermsAndConditions';
  static String routePath = '/termsAndConditions';

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  late TermsAndConditionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsAndConditionsModel());

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
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFFDFCFB),
                    ),
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
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
                                color: Colors.transparent,
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
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                            CreateAccount2Widget.routeName,
                                            queryParameters: {
                                              'emailAddress': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
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
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 24.0, 16.0, 32.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Terms & Conditions',
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Colors.black,
                                            fontSize: 32.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 24.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Last Updated: ',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '17.03.2025',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n\n1. Acceptance of Terms',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\nBy creating an account and using Clero, you agree to these Terms & Conditions (“T&C”). If you do not agree, do not use the App.',
                                              style: TextStyle(),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n\n2. No Responsibility Disclaimer',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\nClero is designed to assist users in tracking deadlines, managing salary calculations, and organizing tasks. However, we do not take any responsibility for:\n\nThe accuracy or completeness of deadline reminders.\n\nAny financial or salary calculations made using the App.\n\nThe correctness or timeliness of any information displayed.\n\nAny decisions made based on the App’s output.',
                                              style: TextStyle(),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n\nYou acknowledge that all final decisions, including financial and professional decisions, are your sole responsibility.',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n\n3. No Legal, Financial, or Professional Advice',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\nThe App does not provide legal, financial, or professional advice. Any data, figures, or recommendations generated by the App are for informational purposes only. You should always verify calculations and seek professional advice when necessary.',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n\n4. User Responsibility',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\nYou agree that:\n\nYou are responsible for double-checking all deadlines and calculations.\n\nYou will not rely solely on the App for financial planning or salary expectations.\n\nYou will use external resources or professionals to validate important information.',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n\n5. Limitation of Liability',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\nUnder no circumstances shall Clero or its developers be liable for any:\n\nMissed deadlines, lost wages, or financial consequences.\n\nErrors, miscalculations, or delays in data updates.\n\nAny direct, indirect, incidental, or consequential damages arising from using the App.',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n\n6. Data Accuracy & Availability',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\nWhile we strive for accuracy, Clero does not guarantee that all information will always be up-to-date or error-free. Data may change over time, and users are responsible for verifying important details independently.',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n\n7. Account & User Data',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\nBy using the App, you agree that your data may be stored and used as described in our ',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Privacy Policy',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '.',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '\n\n8. Changes to Terms',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\nWe reserve the right to update or modify these Terms at any time. Continued use of the App after changes means you accept the revised Terms.',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '\n\n9. Governing Law',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\nThese Terms are governed by the laws of Germany, Schleswig-Holstein',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n\n10. Contact Information',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\nFor any questions regarding these Terms, please contact us at',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' alenajensen@icloud.com.',
                                              style: GoogleFonts.getFont(
                                                'Manrope',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.0,
                                              ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 24.0, 0.0, 32.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Privacy Policy',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color: Colors.black,
                                                        fontSize: 32.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 24.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Last Updated: ',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: '17.03.2025',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\n\nWelcome to Clero. Your privacy is important to us. This Privacy Policy explains how we collect, use, and protect your information when you use our mobile application Clero.\n\nBy using the App, you consent to the practices described in this policy.',
                                                      style: TextStyle(),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\n\n1. Information We Collect',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\nWe collect the following types of data to provide and improve our services:\n',
                                                      style: TextStyle(),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\na) Information You Provide Directly',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\nAccount Data: When signing up, you provide your name, email, and password.\n\nDeadlines & Salary Data: If entered, these remain stored locally or in your account.\n\nSupport Requests: If you contact us, we collect your email and message details.',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\n\nb) Information Collected Automatically',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\nUsage Data: We collect anonymous data on how you interact with the app (e.g., feature usage, session length).\n\nDevice Information: We may collect information such as device type, operating system, and app version for debugging purposes.',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\n\nc) Third-Party Services',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\nIf we use Firebase, Google Analytics, or other tools, they may collect non-personal data for app improvement.',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\n\n2. How We Use Your Data',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\nWe use your data for the following purposes:\n✅ To provide core app functionality (e.g., saving deadlines).\n✅ To improve user experience (e.g., identifying areas of improvement).\n✅ To communicate with users (e.g., responding to support requests).\n✅ To comply with legal obligations.',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\n\n3. Data Storage & Security',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\n🔒 Data Protection: We implement security measures to protect your data from unauthorized access.\n\n📌 Storage Location: Your data may be stored locally on your device or on secure cloud servers.\n\n🗑 Data Retention: We keep your data only as long as necessary for the app’s functionality.',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\n\n4. Sharing & Third-Party Disclosure',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\n🚫 We do not sell, rent, or trade your personal data.\n\n🔄 We may share anonymized usage data with third-party services (e.g., analytics tools) to improve the app.',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\n\n5. Your Rights & Choices',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\nIf you are in the EU (GDPR applies) or in California (CCPA applies), you have the right to:\n\n✅ Access your data.\n✅ Request data correction or deletion.\n✅ Withdraw consent & stop using the app.\n\nTo request any of the above, contact us at alenajensen@icloud.com.',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\n\n6. Policy Updates',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\nWe may update this Privacy Policy. Any significant changes will be notified within the app.',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: '\n\n7. Contact Us',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Manrope',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\nIf you have any questions about this Privacy Policy, contact us at:\n📧 Email: alenajensen@icloud.com',
                                                      style: TextStyle(),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 24.0)),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 24.0)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
