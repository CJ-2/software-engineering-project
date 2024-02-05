import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF181C21),
        appBar: AppBar(
          backgroundColor: Color(0xFF181C21),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFFF1F4F8),
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('HomePage');
            },
          ),
          title: Text(
            'Profile',
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Plus Jakarta Sans',
                  color: Color(0xFFF1F4F8),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: GradientText(
                    'Profile info and progress',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontSize: 25.0,
                        ),
                    colors: [
                      FlutterFlowTheme.of(context).primary,
                      FlutterFlowTheme.of(context).primaryBackground
                    ],
                    gradientDirection: GradientDirection.ltr,
                    gradientType: GradientType.linear,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Container(
                    width: 300.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFE4E8EC),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 30.0,
                          color: Color(0xFF0092CA),
                          offset: Offset(0.0, 0.0),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35.0),
                        bottomRight: Radius.circular(35.0),
                        topLeft: Radius.circular(35.0),
                        topRight: Radius.circular(35.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '\n',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF14181B),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                          Container(
                            width: 58.0,
                            height: 75.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF2A2D33),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                                topLeft: Radius.circular(15.0),
                                topRight: Radius.circular(15.0),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/2118534.png',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          currentUserEmail,
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: Color(0xFF0092CA),
                                                fontSize: 19.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 30.0, 0.0, 0.0),
                                          child: Text(
                                            'your score is:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF0092CA),
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2.0, 39.0, 0.0, 0.0),
                                    child: Text(
                                      FFAppState().userTotalScore.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF0092CA),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 265.0, 0.0, 0.0),
                  child: Text(
                    'this app is a project for Software engeenring 1\n in Imam Mohammad Ibn Saud Islamic University\nby the students: \nabdulaziz alqahtani\nAhmed aldayel\nFaisal batis\nAbdullah bin suqaih\nKhalid tomihi\n\nSupervised by the professor:\nIbrahim Abdelmoniem Ibrahim abdelmeguid\n2023\\2024',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF0092CA),
                          fontSize: 14.0,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
