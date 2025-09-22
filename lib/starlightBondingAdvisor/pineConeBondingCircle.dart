import 'package:encrypt/encrypt.dart';
import 'package:convert/convert.dart';
import 'dart:typed_data';

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