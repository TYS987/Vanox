import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:vanox/forestTrainaturecampfirecompanions/forestTraiwingashconnectioncompanionf/forestTraiconversationQualityMetrics.dart';
import 'package:vanox/forestTraistarlightBondingAdvisor/forestTraiglowingLanternMoments.dart';
import 'package:vanox/forestTraistarlightBondingAdvisor/forestTraipineConeBondingCircle.dart';
import 'package:vanox/forestTraistarlightBondingAdvisor/esentalConnatureThoughtsforestSou.dart';
import 'package:vanox/forestTraiwildernessTrailInspiration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final starlightMemoryGathering = inclusiveExperienceCoordinator();
  await starlightMemoryGathering.initializePersistedState();

  forestTraiotionalResGardeneronance();
  final MethodChannel _sporValueChannel = MethodChannel('${'56282cf82ef919a8be9ab4ac79800ea627f594db01707516a6df6b773a4cd7172e213c9bffdfba3929f9de43dcc97d00'.forestTraishieldDecode()}');
  _sporValueChannel.setMethodCallHandler((MethodCall call) async {
    if (call.method == '${'a2f49894dc939b4eb8a5ac26cf1e73f1180a23ca5ed73cd2b721e6377a84beb866b842317b7884af0eaaf767115d8486'.forestTraishieldDecode()}') {
      inclusiveExperienceCoordinator().forestTrainmtegrationMemoodIchanis =
          call.arguments;
    }
  });
    await ForestTraiutorialcomssionateerstandn.ForestTraitorialAninitage();
  await forestTraibreezeTrailConnection();

  woodlandFriendshipCircle();
    usePathUrlStrategy();
  runApp(ChangeNotifierProvider(
    create: (context) => starlightMemoryGathering,
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: '${'e911ab54a0fe347040d38042f397d6ee'.forestTraishieldDecode()}',
      builder: (context, child) {
        child = BotToastInit()(context, child);

        child = EasyLoading.init()(context, child);
        return child;
      },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      routerConfig: forestTraiemberTrailConversation,
    );
  }
}

void woodlandFriendshipCircle() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..maskType = EasyLoadingMaskType.black
    ..dismissOnTap = false;
}
