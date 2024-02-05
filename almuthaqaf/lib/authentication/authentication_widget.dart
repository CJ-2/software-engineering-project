import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'authentication_model.dart';
export 'authentication_model.dart';

class AuthenticationWidget extends StatefulWidget {
  const AuthenticationWidget({super.key});

  @override
  State<AuthenticationWidget> createState() => _AuthenticationWidgetState();
}

class _AuthenticationWidgetState extends State<AuthenticationWidget>
    with TickerProviderStateMixin {
  late AuthenticationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        BlurEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(4.0, 4.0),
          end: Offset(0.0, 0.0),
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(120.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthenticationModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.emailAddressController1 ??= TextEditingController();
    _model.emailAddressFocusNode1 ??= FocusNode();

    _model.passwordController1 ??= TextEditingController();
    _model.passwordFocusNode1 ??= FocusNode();

    _model.emailAddressController2 ??= TextEditingController();
    _model.emailAddressFocusNode2 ??= FocusNode();

    _model.passwordController2 ??= TextEditingController();
    _model.passwordFocusNode2 ??= FocusNode();

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
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 3.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 27.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14.0),
                        child: Image.asset(
                          'assets/images/logo_7.png',
                          width: 300.0,
                          height: 71.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 28.0),
                child: GradientText(
                  'مكانك الأول لإختبار معرفتك',
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Outfit',
                        fontSize: 22.0,
                      ),
                  colors: [
                    FlutterFlowTheme.of(context).primary,
                    FlutterFlowTheme.of(context).tertiary
                  ],
                  gradientDirection: GradientDirection.ltr,
                  gradientType: GradientType.linear,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(0.0, 0),
                      child: TabBar(
                        isScrollable: true,
                        labelColor: FlutterFlowTheme.of(context).primaryBtnText,
                        labelPadding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        labelStyle: FlutterFlowTheme.of(context).titleMedium,
                        unselectedLabelStyle:
                            FlutterFlowTheme.of(context).titleMedium,
                        indicatorColor:
                            FlutterFlowTheme.of(context).primaryBtnText,
                        tabs: [
                          Tab(
                            text: 'Sign In',
                          ),
                          Tab(
                            text: 'Sign Up',
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [() async {}, () async {}][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 0.0),
                                    child: GradientText(
                                      'Email',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 20.0,
                                          ),
                                      colors: [
                                        Color(0xFF312697),
                                        Color(0xFF8EE6FF)
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 2.0, 20.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.emailAddressController1,
                                    focusNode: _model.emailAddressFocusNode1,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Enter your email...',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF828282),
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF8EE6FF),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0x1AFFFFFF),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 24.0, 20.0, 24.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF8EE6FF),
                                        ),
                                    validator: _model
                                        .emailAddressController1Validator
                                        .asValidator(context),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25.0, 5.0, 0.0, 0.0),
                                    child: GradientText(
                                      'Password',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 20.0,
                                          ),
                                      colors: [
                                        Color(0xFF312697),
                                        Color(0xFF8EE6FF)
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 2.0, 20.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.passwordController1,
                                    focusNode: _model.passwordFocusNode1,
                                    obscureText: !_model.passwordVisibility1,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                      hintText: 'Enter your password...',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF828282),
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF8EE6FF),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0x1AFFFFFF),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 24.0, 20.0, 24.0),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => _model.passwordVisibility1 =
                                              !_model.passwordVisibility1,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.passwordVisibility1
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: Color(0xFF828282),
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                        ),
                                    validator: _model
                                        .passwordController1Validator
                                        .asValidator(context),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 24.0, 20.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      Function() _navigate = () {};
                                      GoRouter.of(context).prepareAuthEvent();

                                      final user =
                                          await authManager.signInWithEmail(
                                        context,
                                        _model.emailAddressController1.text,
                                        _model.passwordController1.text,
                                      );
                                      if (user == null) {
                                        return;
                                      }

                                      _navigate = () => context.goNamedAuth(
                                          'HomePage', context.mounted);
                                      if (FFAppState().sounds == true) {
                                        _model.soundPlayer1 ??= AudioPlayer();
                                        if (_model.soundPlayer1!.playing) {
                                          await _model.soundPlayer1!.stop();
                                        }
                                        _model.soundPlayer1!.setVolume(1.0);
                                        _model.soundPlayer1!
                                            .setAsset(
                                                'assets/audios/select-sound-121244.mp3')
                                            .then((_) =>
                                                _model.soundPlayer1!.play());
                                      }

                                      _navigate();
                                    },
                                    text: 'Login',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFF0092CA),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                          ),
                                      elevation: 0.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 0.0),
                                    child: GradientText(
                                      'Email',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 20.0,
                                          ),
                                      colors: [
                                        Color(0xFF312697),
                                        Color(0xFF8EE6FF)
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 2.0, 20.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.emailAddressController2,
                                    focusNode: _model.emailAddressFocusNode2,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                          ),
                                      hintText: 'Enter your email...',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF828282),
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF8EE6FF),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0x1AFFFFFF),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 24.0, 20.0, 24.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                        ),
                                    validator: _model
                                        .emailAddressController2Validator
                                        .asValidator(context),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25.0, 5.0, 0.0, 0.0),
                                    child: GradientText(
                                      'Password',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 20.0,
                                          ),
                                      colors: [
                                        Color(0xFF312697),
                                        Color(0xFF8EE6FF)
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 2.0, 20.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.passwordController2,
                                    focusNode: _model.passwordFocusNode2,
                                    obscureText: !_model.passwordVisibility2,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                          ),
                                      hintText: 'Enter your password...',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF828282),
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF8EE6FF),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0x1AFFFFFF),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 24.0, 20.0, 24.0),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => _model.passwordVisibility2 =
                                              !_model.passwordVisibility2,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.passwordVisibility2
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: Color(0xFF828282),
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                        ),
                                    validator: _model
                                        .passwordController2Validator
                                        .asValidator(context),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 24.0, 20.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      Function() _navigate = () {};
                                      GoRouter.of(context).prepareAuthEvent();

                                      final user = await authManager
                                          .createAccountWithEmail(
                                        context,
                                        _model.emailAddressController1.text,
                                        _model.passwordController1.text,
                                      );
                                      if (user == null) {
                                        return;
                                      }

                                      _navigate = () => context.goNamedAuth(
                                          'HomePage', context.mounted);
                                      if (FFAppState().sounds == true) {
                                        _model.soundPlayer2 ??= AudioPlayer();
                                        if (_model.soundPlayer2!.playing) {
                                          await _model.soundPlayer2!.stop();
                                        }
                                        _model.soundPlayer2!.setVolume(1.0);
                                        _model.soundPlayer2!
                                            .setAsset(
                                                'assets/audios/select-sound-121244.mp3')
                                            .then((_) =>
                                                _model.soundPlayer2!.play());
                                      }

                                      _navigate();
                                    },
                                    text: 'Register',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFF0092CA),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                          ),
                                      elevation: 0.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
