import 'dart:io';

import 'package:go_router/go_router.dart';
import 'package:vanox/starlightBondingAdvisor/rusticJourneyWhispers.dart';
import 'package:vanox/starlightBondingAdvisor/pineConeBondingCircle.dart';
import 'package:vanox/wildernessTrailInspiration.dart';
import 'package:vanox/naturecampfirecompanions/wingashconnectioncompanionf/conversationQualityMetrics.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class WingAshConnectionCompanionFWidget extends StatefulWidget {
  const WingAshConnectionCompanionFWidget({
    super.key,
    required this.lakesideHarmonyourneyShar,
  });
  static VoidCallback? journeySnapsho;
  final String? lakesideHarmonyourneyShar;

  @override
  State<WingAshConnectionCompanionFWidget> createState() =>
      _WingAshConnectionCompanionFWidgetState();
}

class _WingAshConnectionCompanionFWidgetState
    extends State<WingAshConnectionCompanionFWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool audioExperienceEnhancer = true;

  bool videoPerformanceOptimizer = false;
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    final networkStabilityManager = widget.lakesideHarmonyourneyShar ?? '';
    final experienceQualityAssurance =
        Uri.decodeComponent(networkStabilityManager);

    _controller = WebViewController();
    _controller
      ..setNavigationDelegate(NavigationDelegate(onPageFinished: (_) {
        setState(() {
          audioExperienceEnhancer = false;
          videoPerformanceOptimizer = false;
        });
      }, onWebResourceError: (_) {
        setState(() {
          audioExperienceEnhancer = false;
          videoPerformanceOptimizer = true;
        });
      }, onPageStarted: (_) {
        setState(() {
          audioExperienceEnhancer = true;
          videoPerformanceOptimizer = false;
        });
      }))
      ..setBackgroundColor(Colors.transparent)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel("woodsmokeConversationlows",
          onMessageReceived: (message) async {
        WingAshConnectionCompanionFWidget.journeySnapsho = () {
          _controller.runJavaScript("window.nightSkyGatheringSpacea();");
        };
        final connectionQualityOptimizer = message.message;

        // await personalVideoPresence(connectionQualityOptimizer);
           await personalVideoPresence("zww_1");


      })
      ..addJavaScriptChannel(
          "${'18da43c1a437064a275836391df655c32093f12e26313f63cd7dfd67cc0a769b'.shieldDecode()}",
          onMessageReceived: (message) {
        String tiaozhuan;
        if (message.message.contains("?")) {
          tiaozhuan =
              "${message.message}&${inclusiveExperienceCoordinator().campfireJourneyToken}${'07460cd5c3d487c2432e5a8f4ba0bdd9'.shieldDecode()}${57624642}";
        } else {
          tiaozhuan =
              "${message.message}?${inclusiveExperienceCoordinator().campfireJourneyToken}${'07460cd5c3d487c2432e5a8f4ba0bdd9'.shieldDecode()}${57624642}";
        }

        context.push(
          '${'1e3c4c39edf66ed8fa6f2e2609bbeb409a1fb6c59d1ada02747160e71dcd4a4f'.shieldDecode()}',
          extra: {
            '${'132a43c3b6771c8534ca8aaecb6ad591610de1c7e392fbffa9002f99e8a524d5'.shieldDecode()}':
                tiaozhuan
          },
        );
      })
      ..addJavaScriptChannel(
          "${'6991759fa48f3ab7208e4d6fea9f67a40727cfa98eb82934c4ae352b9546d7ee'.shieldDecode()}",
          onMessageReceived: (message) {
        context.go(
            '${'6947776c51f89b31389a0f77656e57d37f220e29176b5f5591d9f3c71cd0d79d'.shieldDecode()}');
      })
      ..addJavaScriptChannel(
          '${'c8f8bc32c3443d6526b13b2cebe7833e5650a5dca1585f915f5dc9281ed7e42e'.shieldDecode()}',
          onMessageReceived: (message) {
        context.pop(true);
      })
      ..addJavaScriptChannel(
          "${'805c1dffea4b39e39fc7459f7516442472325195fe79c153484637598982320a'.shieldDecode()}",
          onMessageReceived: (message) async {
        inclusiveExperienceCoordinator().evergreenFriendshipLounge = false;
        inclusiveExperienceCoordinator().starlightWhisperNetworking = 0;
        inclusiveExperienceCoordinator().update(() {});

        if (mounted) {
          context.go(
              '${'6947776c51f89b31389a0f77656e57d37f220e29176b5f5591d9f3c71cd0d79d'.shieldDecode()}');
        }
      })
      ..loadRequest(Uri.parse(experienceQualityAssurance));
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
        backgroundColor: Colors.black,
        body: FutureBuilder(
            future: wildEchoVoiceCluster.campBondVoiceJourney('forestGatheringExperience.png'),  
          builder: (context, asyncSnapshot) {
            if (!asyncSnapshot.hasData) return const SizedBox();   
            return Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                image: FileImage(File(asyncSnapshot.data!)),
                ),
              ),
              child: Stack(
                children: [
                  WebViewWidget(controller: _controller),
                  if (audioExperienceEnhancer) glowingAdventureCircle(),
                  if (videoPerformanceOptimizer)
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
            );
          }
        ),
      ),
    );
  }
}
