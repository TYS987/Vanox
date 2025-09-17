import 'dart:convert';

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

    // 新增的两个字段初始化
    _safeInit(() {
      _campfireJourneyToken =
          prefs.getString('ff_campfireJourneyToken') ?? _campfireJourneyToken;
    });
    _safeInit(() {
      _starlitCompanionId =
          prefs.getInt('ff_starlitCompanionId') ?? _starlitCompanionId;
    });
_safeInit(() {
  final campfireProfilesJson = prefs.getString('ff_starlightCampfireProfiles');
  if (campfireProfilesJson != null && campfireProfilesJson.isNotEmpty) {
    final decoded = jsonDecode(campfireProfilesJson);
    if (decoded is List) {
      _starlightCampfireProfiles = List<dynamic>.from(decoded);
    }
  }
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

  bool _evergreenFriendshipLounge = false;
  bool get evergreenFriendshipLounge => _evergreenFriendshipLounge;
  set evergreenFriendshipLounge(bool value) {
    _evergreenFriendshipLounge = value;
    prefs.setBool('ff_evergreenFriendshipLounge', value);
  }


  // 新增的用户 token
    String _campfireJourneyToken = '';
  String get campfireJourneyToken => _campfireJourneyToken;
  set campfireJourneyToken(String value) {
    _campfireJourneyToken = value;
    prefs.setString('ff_campfireJourneyToken', value);
  }

  // 新增的用户 id
  int _starlitCompanionId = 0;
  int get starlitCompanionId => _starlitCompanionId;
  set starlitCompanionId(int value) {
    _starlitCompanionId = value;
    prefs.setInt('ff_starlitCompanionId', value);
  }

  /// 新增：用户篝火社交档案数据
List<dynamic> _starlightCampfireProfiles = [];
List<dynamic> get starlightCampfireProfiles => _starlightCampfireProfiles;
set starlightCampfireProfiles(List<dynamic> value) {
  _starlightCampfireProfiles = value;
  prefs.setString('ff_starlightCampfireProfiles', jsonEncode(value)); // 持久化存储
  notifyListeners();
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
