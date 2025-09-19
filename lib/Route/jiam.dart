import 'package:encrypt/encrypt.dart';
import 'package:convert/convert.dart';
import 'dart:typed_data';

extension CosmicStringShield on String {
  // 新密钥和 IV（长度必须符合 AES 要求）
  static final cosmicKey = Key.fromUtf8('9xv7b3f8z1kq4d2a'); // 16 字节
  static final cosmicIV = IV.fromUtf8('p0l8m3n5q9w2x7y4');  // 16 字节

  // AES 加密器
  static final stellarEncrypter =
      Encrypter(AES(cosmicKey, mode: AESMode.cbc));

  /// 加密方法
  String shieldEncode() {
    try {
      final encrypted = stellarEncrypter.encrypt(this, iv: cosmicIV);
      return hex.encode(encrypted.bytes);
    } catch (e) {
      print("shield encode error: $e");
      return '';
    }
  }

  /// 解密方法
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