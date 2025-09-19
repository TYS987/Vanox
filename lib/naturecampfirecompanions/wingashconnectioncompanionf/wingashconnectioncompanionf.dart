import 'package:go_router/go_router.dart';
import 'package:vanox/Route/fangfa.dart';
import 'package:vanox/app_state.dart';
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



  // 定义变量
  // 控制loding显示于隐藏
  bool blossomTrendAtlas = true;
  // 这个加载失败显示的界面
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
        // await elatedSublimePaymentMethod('zww_1');
      })

      // 跳转页面

      ..addJavaScriptChannel("evergreenWhisperExchangea", onMessageReceived: (message) {
        String tiaozhuan;
        if (message.message.contains("?")) {
          tiaozhuan =
              "${message.message}&${FFAppState().campfireJourneyToken}&appID=${57624642}";
        } else {
          tiaozhuan =
              "${message.message}?${FFAppState().campfireJourneyToken}&appID=${57624642}";
        }

        context.push(
          '/wingAshConnectionCompanionF',
          extra: {'lakesideHarmonyourneyShar': tiaozhuan},
        );
      })

      // 跳转登录
      ..addJavaScriptChannel("sereneStarlightConnectiona",
          onMessageReceived: (message) {
        context.go('/emberFriendshimpanionL');
      })

      //关闭H5方法
      ..addJavaScriptChannel('wildernessHarmonyorum',
          onMessageReceived: (message) {
        print("关闭当前页面");
       context.pop(true); 
      })

      // 退出登录
      ..addJavaScriptChannel("woodlandFriendshipSphere",
          onMessageReceived: (message) async {
        print("退出登录");
        FFAppState().evergreenFriendshipLounge = false;
        FFAppState().starlightWhisperNetworking = 0;
        FFAppState().update(() {});

        if (mounted) {
          context.go('/emberFriendshimpanionL');
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
                          "加载失败，请稍后重试",
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
                          "重试",
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
