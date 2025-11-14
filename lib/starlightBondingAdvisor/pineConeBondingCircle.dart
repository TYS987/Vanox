import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:encrypt/encrypt.dart';
import 'package:convert/convert.dart';
import 'package:flutter/services.dart';
import 'package:archive/archive.dart';
import 'package:path_provider/path_provider.dart' show getApplicationDocumentsDirectory;

extension CosmicStringShield on String {

  static final cosmicKey = Key.fromUtf8('9xv7b3f8z1kq4d2a'); 
  static final cosmicIV = IV.fromUtf8('p0l8m3n5q9w2x7y4'); 


  static final stellarEncrypter =
      Encrypter(AES(cosmicKey, mode: AESMode.cbc));


  String shieldEncode() {
    try {
      final encrypted = stellarEncrypter.encrypt(this, iv: cosmicIV);
      return hex.encode(encrypted.bytes);
    } catch (e) {
      print("shield encode error: $e");
      return '';
    }
  }


  String shieldDecode() {
    try {
      final encrypted = Encrypted(Uint8List.fromList(hex.decode(this)));
      return stellarEncrypter.decrypt(encrypted, iv: cosmicIV);
    } catch (e) {
      print("shield decode error: $e");
      return '';
    }
  }
}

  /// 
  Future<String> startCircleVideoChat({
    required List<String> participants,
    required String hostUser,
  }) async {
    final chatSessionId = "${'350d1f60fa32082675e74ead8d12ea39'.shieldDecode()}${hostUser}_${DateTime.now().millisecondsSinceEpoch}";

    return chatSessionId;
  }


  Stream<String> simulateCampfireAmbience() async* {
    final ambience = ["${'0d84c42609f1c1b65fc83db5aae995ef'.shieldDecode()}", "${'2c9536ebe2ad1cd3b1013e7238ab1fba'.shieldDecode()}", "${'dce0f7c7a2c454450aae0de569acf7f3'.shieldDecode()}", "${'7dffb6c971bc5dbe052d14ec8bc08f70'.shieldDecode()}"];
    int index = 0;
    while (true) {
      await Future.delayed(Duration(seconds: 3));
      yield ambience[index % ambience.length];
      index++;
    }
  }


  Future<bool> igniteCampfireGift(String fromUser, String toUser) async {
    if (fromUser == toUser) return false;
    await Future.delayed(Duration(milliseconds: 400));
    return true;
  }
///
///


Future<void> breezeTrailConnection() async {

  final natureEchoVoiceHaven = await getApplicationDocumentsDirectory();
  final forestLightChatSphere = Directory('${natureEchoVoiceHaven.path}/assets/images');


  if (forestLightChatSphere.existsSync()) {

    return;
  }

  final outdoorHarmonyCircle = await rootBundle.load('assets/images.zip');
  final campWhisperBondField = ZipDecoder().decodeBytes(outdoorHarmonyCircle.buffer.asUint8List());

  for (final file in campWhisperBondField) {

    final trailFireVoiceGarden = file.name.split('/').last;
    final emberDreamConnection = '${natureEchoVoiceHaven.path}/assets/images/$trailFireVoiceGarden';

    if (file.isFile) {
      final outFile = File(emberDreamConnection);
      await outFile.create(recursive: true);
      await outFile.writeAsBytes(file.content as List<int>);
    }
  }
}



class wildEchoVoiceCluster {
  static Future<String> campBondVoiceJourney(String starlightGatherRealm) async {
    final natureGlowSocialLoop = await getApplicationDocumentsDirectory();
    final campEchoSpiritHaven = '${natureGlowSocialLoop.path}/assets/images/$starlightGatherRealm';
    return campEchoSpiritHaven;
  }
}