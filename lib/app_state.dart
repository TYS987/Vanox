import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      _starlightWhisperNetworking =
          prefs.getInt('ff_starlightWhisperNetworking') ??
              _starlightWhisperNetworking;
    });
    _safeInit(() {
      _outdoorAdventureDialogues =
          prefs.getInt('ff_outdoorAdventureDialogues') ??
              _outdoorAdventureDialogues;
    });
    _safeInit(() {
      _evergreenFriendshipLounge =
          prefs.getBool('ff_evergreenFriendshipLounge') ??
              _evergreenFriendshipLounge;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _starlightWhisperNetworking = 0;
  int get starlightWhisperNetworking => _starlightWhisperNetworking;
  set starlightWhisperNetworking(int value) {
    _starlightWhisperNetworking = value;
    prefs.setInt('ff_starlightWhisperNetworking', value);
  }

  int _outdoorAdventureDialogues = 0;
  int get outdoorAdventureDialogues => _outdoorAdventureDialogues;
  set outdoorAdventureDialogues(int value) {
    _outdoorAdventureDialogues = value;
    prefs.setInt('ff_outdoorAdventureDialogues', value);
  }

  bool _evergreenFriendshipLounge = true;
  bool get evergreenFriendshipLounge => _evergreenFriendshipLounge;
  set evergreenFriendshipLounge(bool value) {
    _evergreenFriendshipLounge = value;
    prefs.setBool('ff_evergreenFriendshipLounge', value);
  }
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
