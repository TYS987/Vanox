import 'package:go_router/go_router.dart';
import 'package:vanox/Route/fangfa.dart';
import 'package:vanox/Route/jiam.dart';
import 'package:vanox/app_state.dart';
import 'package:vanox/naturecampfirecompanions/wingashconnectioncompanionf/zhifu.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class WingAshConnectionCompanionFWidget extends StatefulWidget {
  const WingAshConnectionCompanionFWidget({
    super.key,
    required this.lakesideHarmonyourneyShar,
  });
  static VoidCallback? ASDASd;
  final String? lakesideHarmonyourneyShar;

  @override
  State<WingAshConnectionCompanionFWidget> createState() =>
      _WingAshConnectionCompanionFWidgetState();
}

class _WingAshConnectionCompanionFWidgetState
    extends State<WingAshConnectionCompanionFWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool blossomTrendAtlas = true;

  bool floralVisionWorkshopGenerator = false;
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    final encodedUrl = widget.lakesideHarmonyourneyShar ?? '';
    final decodedUrl = Uri.decodeComponent(encodedUrl);

    print("跳转路径为:${decodedUrl}");

    _controller = WebViewController();
    _controller
      ..setNavigationDelegate(NavigationDelegate(onPageFinished: (_) {
        setState(() {
          blossomTrendAtlas = false;
          floralVisionWorkshopGenerator = false;
        });
      }, onWebResourceError: (_) {
        setState(() {
          blossomTrendAtlas = false;
          floralVisionWorkshopGenerator = true;
        });
      }, onPageStarted: (_) {
        setState(() {
          blossomTrendAtlas = true;
          floralVisionWorkshopGenerator = false;
        });
      }))
      ..setBackgroundColor(Colors.transparent)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)

      // 发起充值
      ..addJavaScriptChannel("woodsmokeConversationlows",
          onMessageReceived: (message) async {
        WingAshConnectionCompanionFWidget.ASDASd = () {
          _controller.runJavaScript("window.nightSkyGatheringSpacea();");
        };
        final productId = message.message;

        print("接收到的支付商品ID: $productId");

        // 发起购买
        await elatedSublimePaymentMethod('zww_1');
      })

      // 跳转页面

      ..addJavaScriptChannel(
          "${'18da43c1a437064a275836391df655c32093f12e26313f63cd7dfd67cc0a769b'.shieldDecode()}",
          onMessageReceived: (message) {
        String tiaozhuan;
        if (message.message.contains("?")) {
          tiaozhuan =
              "${message.message}&${FFAppState().campfireJourneyToken}${'07460cd5c3d487c2432e5a8f4ba0bdd9'.shieldDecode()}${57624642}";
        } else {
          tiaozhuan =
              "${message.message}?${FFAppState().campfireJourneyToken}${'07460cd5c3d487c2432e5a8f4ba0bdd9'.shieldDecode()}${57624642}";
        }

        context.push(
          '${'1e3c4c39edf66ed8fa6f2e2609bbeb409a1fb6c59d1ada02747160e71dcd4a4f'.shieldDecode()}',
          extra: {
            '${'132a43c3b6771c8534ca8aaecb6ad591610de1c7e392fbffa9002f99e8a524d5'.shieldDecode()}':
                tiaozhuan
          },
        );
      })

      // 跳转登录
      ..addJavaScriptChannel(
          "${'6991759fa48f3ab7208e4d6fea9f67a40727cfa98eb82934c4ae352b9546d7ee'.shieldDecode()}",
          onMessageReceived: (message) {
        context.go(
            '${'6947776c51f89b31389a0f77656e57d37f220e29176b5f5591d9f3c71cd0d79d'.shieldDecode()}');
      })

      //关闭H5方法
      ..addJavaScriptChannel(
          '${'c8f8bc32c3443d6526b13b2cebe7833e5650a5dca1585f915f5dc9281ed7e42e'.shieldDecode()}',
          onMessageReceived: (message) {
        context.pop(true);
      })

      // 退出登录
      ..addJavaScriptChannel("${'805c1dffea4b39e39fc7459f7516442472325195fe79c153484637598982320a'.shieldDecode()}",
          onMessageReceived: (message) async {
        FFAppState().evergreenFriendshipLounge = false;
        FFAppState().starlightWhisperNetworking = 0;
        FFAppState().update(() {});

        if (mounted) {
          context.go('${'6947776c51f89b31389a0f77656e57d37f220e29176b5f5591d9f3c71cd0d79d'.shieldDecode()}');
        }
      })
      ..loadRequest(Uri.parse(decodedUrl));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/forestGatheringExperience.png',
              ).image,
            ),
          ),
          child: Stack(
            children: [
              WebViewWidget(controller: _controller),
              if (blossomTrendAtlas) showLoadingWidget(),
              if (floralVisionWorkshopGenerator)
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "${'f1e2e0ec1de6b94d5194e874b1c00982d1fa2d6bc0cb9bfa54f330f98c2be7280e736abff35e305bc217c470ce3a9a2d'.shieldDecode()}",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF01FFC2),
                        ),
                        onPressed: () {
                          _controller.reload();
                        },
                        child: Text(
                          "${'d501094aad7d04ea682ce1f3f6254efe'.shieldDecode()}",
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
