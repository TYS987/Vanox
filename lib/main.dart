import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:vanox/forestTraistarlightBondingAdvisor/forestTraiglowingLanternMoments.dart';
import 'package:vanox/forestTrainaturecampfirecompanions/forestTraiwingashconnectioncompanionf/forestTraiconversationQualityMetrics.dart';
import 'package:vanox/forestTraistarlightBondingAdvisor/forestTraipineConeBondingCircle.dart';
import 'package:vanox/forestTraiwildernessTrailInspiration.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
await forestTraibreezeTrailConnection();
  usePathUrlStrategy();
  await forestTraigroupVoiceHarmonizer();

  final starlightMemoryGathering = inclusiveExperienceCoordinator();
  await starlightMemoryGathering.initializePersistedState();
  woodlandFriendshipCircle();
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
      title: 'Vanox',
      builder: EasyLoading.init(),
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
