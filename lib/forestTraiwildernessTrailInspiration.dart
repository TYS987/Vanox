import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class inclusiveExperienceCoordinator extends ChangeNotifier {
  static inclusiveExperienceCoordinator _instance = inclusiveExperienceCoordinator._internal();

  factory inclusiveExperienceCoordinator() {
    return _instance;
  }

  inclusiveExperienceCoordinator._internal();

  static void reset() {
    _instance = inclusiveExperienceCoordinator._internal();
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
    _safeInit(() {
      final profileJson = prefs.getString('ff_wildernessExpeditionUserProfile');
      if (profileJson != null && profileJson.isNotEmpty) {
        final decoded = jsonDecode(profileJson);
        if (decoded is Map<String, dynamic>) {
          _wildernessExpeditionUserProfile = decoded;
        }
      }
    });

    _safeInit(() {
      final roomsJson = prefs.getString('ff_virtualWildernessRetreatRooms');
      if (roomsJson != null && roomsJson.isNotEmpty) {
        final decoded = jsonDecode(roomsJson);
        if (decoded is List) {
          _virtualWildernessRetreatRooms =
              List<Map<String, dynamic>>.from(decoded.map(
            (e) => Map<String, dynamic>.from(e),
          ));
        }
      }
    });

    _safeInit(() {
  final postsJson = prefs.getString('ff_starlitCampfireJourneyPosts');
  if (postsJson != null && postsJson.isNotEmpty) {
    final decoded = jsonDecode(postsJson);
    if (decoded is List) {
      _starlitCampfireJourneyPosts = List<Map<String, dynamic>>.from(
        decoded.map((e) => Map<String, dynamic>.from(e)),
      );
    }
  }
});


    _safeInit(() {
      final messagesJson = prefs.getString('ff_starlightCampfireMessages');
      if (messagesJson != null && messagesJson.isNotEmpty) {
        final decoded = jsonDecode(messagesJson);
        if (decoded is List) {
          _starlightCampfireMessages = List<Map<String, dynamic>>.from(
            decoded.map((e) => Map<String, dynamic>.from(e)),
          );
        }
      }
    });

_safeInit(() {
  final chatDataJson = prefs.getString('ff_starlitCampfireVoiceChats');
  if (chatDataJson != null && chatDataJson.isNotEmpty) {
    final decoded = jsonDecode(chatDataJson);
    if (decoded is List) {
      _starlitCampfireVoiceChats = decoded
          .map<Map<String, dynamic>>((e) => Map<String, dynamic>.from(e))
          .toList();
    }
  }
});
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

//定义一个变量判断是否是游客登录
 String virtualCampfireConnections = '';

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


    String _campfireJourneyToken = '';
  String get campfireJourneyToken => _campfireJourneyToken;
  set campfireJourneyToken(String value) {
    _campfireJourneyToken = value;
    prefs.setString('ff_campfireJourneyToken', value);
  }


  int _starlitCompanionId = 0;
  int get starlitCompanionId => _starlitCompanionId;
  set starlitCompanionId(int value) {
    _starlitCompanionId = value;
    prefs.setInt('ff_starlitCompanionId', value);
  }


List<dynamic> _starlightCampfireProfiles = [];
List<dynamic> get starlightCampfireProfiles => _starlightCampfireProfiles;
set starlightCampfireProfiles(List<dynamic> value) {
  _starlightCampfireProfiles = value;
  prefs.setString('ff_starlightCampfireProfiles', jsonEncode(value)); 
  notifyListeners();
}


  Map<String, dynamic> _wildernessExpeditionUserProfile = {};
  Map<String, dynamic> get wildernessExpeditionUserProfile => _wildernessExpeditionUserProfile;
  set wildernessExpeditionUserProfile(Map<String, dynamic> value) {
    _wildernessExpeditionUserProfile = value;
    prefs.setString('ff_wildernessExpeditionUserProfile', jsonEncode(value)); 
    notifyListeners();
  }


  List<Map<String, dynamic>> _virtualWildernessRetreatRooms = [];
  List<Map<String, dynamic>> get virtualWildernessRetreatRooms =>
      _virtualWildernessRetreatRooms;
  set virtualWildernessRetreatRooms(List<dynamic> value) {

    _virtualWildernessRetreatRooms = List<Map<String, dynamic>>.from(
      value.map((e) => Map<String, dynamic>.from(e)),
    );
    prefs.setString('ff_virtualWildernessRetreatRooms',
        jsonEncode(_virtualWildernessRetreatRooms));
    notifyListeners();
  }
  

List<Map<String, dynamic>> _starlitCampfireJourneyPosts = [];
List<Map<String, dynamic>> get starlitCampfireJourneyPosts => _starlitCampfireJourneyPosts;
set starlitCampfireJourneyPosts(List<Map<String, dynamic>> value) {
  _starlitCampfireJourneyPosts = value;
  prefs.setString('ff_starlitCampfireJourneyPosts', jsonEncode(value)); 
  notifyListeners();


}

 List<Map<String, dynamic>> _starlightCampfireMessages = [];
  List<Map<String, dynamic>> get starlightCampfireMessages => _starlightCampfireMessages;
  set starlightCampfireMessages(List<Map<String, dynamic>> value) {
    _starlightCampfireMessages = value;
    prefs.setString('ff_starlightCampfireMessages', jsonEncode(value));
    notifyListeners();
  }

List<Map<String, dynamic>> _starlitCampfireVoiceChats = [];
List<Map<String, dynamic>> get starlitCampfireVoiceChats => _starlitCampfireVoiceChats;
set starlitCampfireVoiceChats(List<dynamic> value) {

  _starlitCampfireVoiceChats = value
      .map<Map<String, dynamic>>((e) => Map<String, dynamic>.from(e))
      .toList();


  prefs.setString(
      'ff_starlitCampfireVoiceChats', jsonEncode(_starlitCampfireVoiceChats));

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
