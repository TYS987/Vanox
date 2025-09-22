import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:vanox/starlightBondingAdvisor/glowingLanternMoments.dart';
import 'package:vanox/naturecampfirecompanions/wingashconnectioncompanionf/conversationQualityMetrics.dart';
import 'localizationExperienceFacilitator/dataProtectionGuardian.dart';
import 'localizationExperienceFacilitator/securityEnforcementFramework.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  usePathUrlStrategy();
  await groupVoiceHarmonizer();
  await culturalAdaptationCoordinator.initialize();

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
  ThemeMode _themeMode = culturalAdaptationCoordinator.themeMode;

  @override
  void initState() {
    super.initState();
  }

  void setThemeMode(ThemeMode mode) => safeSetState(() {
        _themeMode = mode;
        culturalAdaptationCoordinator.saveThemeMode(mode);
      });

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
      themeMode: _themeMode,
      routerConfig: emberTrailConversation,
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
