import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'settings_model.dart';
export 'settings_model.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  late SettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsModel());

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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF181C21),
      appBar: AppBar(
        backgroundColor: Color(0xFF181C21),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          buttonSize: 46.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF91E2F2),
            size: 24.0,
          ),
          onPressed: () async {
            context.pushNamed('HomePage');

            if (FFAppState().sounds == true) {
              _model.soundPlayer ??= AudioPlayer();
              if (_model.soundPlayer!.playing) {
                await _model.soundPlayer!.stop();
              }
              _model.soundPlayer!.setVolume(1.0);
              _model.soundPlayer!
                  .setAsset('assets/audios/select-sound-121244.mp3')
                  .then((_) => _model.soundPlayer!.play());
            }
          },
        ),
        title: Text(
          'Settings Page',
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'Outfit',
                color: Color(0xFF0092CA),
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    'Choose what notifcations you want to recieve below and we will update the settings.',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFFF1F4F8),
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: SwitchListTile.adaptive(
              value: _model.switchListTileValue ??= FFAppState().sounds,
              onChanged: (newValue) async {
                setState(() => _model.switchListTileValue = newValue!);
                if (newValue!) {
                  FFAppState().update(() {
                    FFAppState().sounds = true;
                  });
                } else {
                  FFAppState().update(() {
                    FFAppState().sounds = false;
                  });
                }
              },
              title: Text(
                'App Sounds',
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF0092CA),
                      lineHeight: 2.0,
                    ),
              ),
              subtitle: Text(
                'turn on/off the application sounds',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFFF1F4F8),
                    ),
              ),
              tileColor: Color(0xFF181C21),
              activeColor: Color(0xFF0092CA),
              activeTrackColor: FlutterFlowTheme.of(context).accent1,
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding:
                  EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('Authentication');
              },
              child: Container(
                width: 118.0,
                height: 53.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).error,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Log Out',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFFF1EAEA),
                        ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
