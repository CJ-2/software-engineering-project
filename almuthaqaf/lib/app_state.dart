import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _sounds = prefs.getBool('ff_sounds') ?? _sounds;
    });
    _safeInit(() {
      _userTotalScore = prefs.getInt('ff_userTotalScore') ?? _userTotalScore;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _completedQuestion = 0;
  int get completedQuestion => _completedQuestion;
  set completedQuestion(int _value) {
    _completedQuestion = _value;
  }

  int _score = 0;
  int get score => _score;
  set score(int _value) {
    _score = _value;
  }

  bool _sounds = true;
  bool get sounds => _sounds;
  set sounds(bool _value) {
    _sounds = _value;
    prefs.setBool('ff_sounds', _value);
  }

  int _userTotalScore = 0;
  int get userTotalScore => _userTotalScore;
  set userTotalScore(int _value) {
    _userTotalScore = _value;
    prefs.setInt('ff_userTotalScore', _value);
  }

  bool _soundfalse = false;
  bool get soundfalse => _soundfalse;
  set soundfalse(bool _value) {
    _soundfalse = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
