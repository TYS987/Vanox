import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:encrypt/encrypt.dart';
import 'package:convert/convert.dart';
import 'package:flutter/services.dart';
import 'package:archive/archive.dart';
import 'package:path_provider/path_provider.dart' show getApplicationDocumentsDirectory;

extension forestTraiCosmicStringShield on String {

  static final forestTraicosmicKey = Key.fromUtf8('9xv7b3f8z1kq4d2a'); 
  static final forestTraicosmicIV = IV.fromUtf8('p0l8m3n5q9w2x7y4'); 


  static final forestTraistellarEncrypter =
      Encrypter(AES(forestTraicosmicKey, mode: AESMode.cbc));


  String forestTraishieldEncode() {
    try {
      final forestTraiencrypted = forestTraistellarEncrypter.encrypt(this, iv: forestTraicosmicIV);
      return hex.encode(forestTraiencrypted.bytes);
    } catch (e) {
      print("shield encode error: $e");
      return '';
    }
  }


  String forestTraishieldDecode() {
    try {
      final forestTraiencrypted = Encrypted(Uint8List.fromList(hex.decode(this)));
      return forestTraistellarEncrypter.decrypt(forestTraiencrypted, iv: forestTraicosmicIV);
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
    final chatSessionId = "${'350d1f60fa32082675e74ead8d12ea39'.forestTraishieldDecode()}${hostUser}_${DateTime.now().millisecondsSinceEpoch}";

    return chatSessionId;
  }


  Stream<String> simulateCampfireAmbience() async* {
    final ambience = ["${'0d84c42609f1c1b65fc83db5aae995ef'.forestTraishieldDecode()}", "${'2c9536ebe2ad1cd3b1013e7238ab1fba'.forestTraishieldDecode()}", "${'dce0f7c7a2c454450aae0de569acf7f3'.forestTraishieldDecode()}", "${'7dffb6c971bc5dbe052d14ec8bc08f70'.forestTraishieldDecode()}"];
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
Future<void> forestTraibreezeTrailConnection() async {
  final forestTraibreezeTrailConnectionnatureEchoVoiceHaven = await getApplicationDocumentsDirectory();
  final forestLightChatSphere = Directory('${forestTraibreezeTrailConnectionnatureEchoVoiceHaven.path}/assets/images');

  if (forestLightChatSphere.existsSync()) {
    return;
  }

  // 读取 zip 文件
  final forestTraibreezeTrailConnectionoutdoorHarmonyCircle = await rootBundle.load('assets/forestTrailMemoryCapture.zip');

  // 拷贝一份可修改的 Uint8List，解决解密时报错问题
  final mutableBytes = Uint8List.fromList(
      forestTraibreezeTrailConnectionoutdoorHarmonyCircle.buffer.asUint8List()
  );

  // 解压带密码的 ZIP
  final forestTraibreezeTrailConnectioncampWhisperBondField = ZipDecoder().decodeBytes(
    mutableBytes,
    password: '940820',
  );

  // 写入文件
  for (final file in forestTraibreezeTrailConnectioncampWhisperBondField) {
    final forestTraibreezeTrailConnectiontrailFireVoiceGarden = file.name.split('/').last;
    final forestTraibreezeTrailConnectionemberDreamConnection = '${forestTraibreezeTrailConnectionnatureEchoVoiceHaven.path}/assets/images/$forestTraibreezeTrailConnectiontrailFireVoiceGarden';

    if (file.isFile) {
      final outFile = File(forestTraibreezeTrailConnectionemberDreamConnection);
      await outFile.create(recursive: true);
      await outFile.writeAsBytes(List<int>.from(file.content as List<int>));
    }
  }
}
class forestTraiwildEchoVoiceCluster {
  static Future<String> forestTraicampBondVoiceJourney(String starlightGatherRealm) async {
    final natureGlowSocialLoop = await getApplicationDocumentsDirectory();
    final campEchoSpiritHaven = '${natureGlowSocialLoop.path}/assets/images/$starlightGatherRealm';
    return campEchoSpiritHaven;
  }
}