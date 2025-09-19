import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vanox/Route/jiam.dart';
import 'package:vanox/app_state.dart';
import 'package:vanox/naturecampfirecompanions/emberfriendshimpanionl/emberfriendshimpanionl.dart';
import 'package:vanox/naturecampfirecompanions/glowingfireplacestoriesebone/glowingfireplacestoriesebone.dart';
import 'package:vanox/naturecampfirecompanions/horizonwhisperneournem/horizonwhisperneournem.dart';
import 'package:vanox/naturecampfirecompanions/outdoorjourneycompanionsh/outdoorjourneycompanionsh.dart';
import 'package:vanox/naturecampfirecompanions/rusticoutdoorfriendshipv/rusticoutdoorfriendshipv.dart';
import 'package:vanox/naturecampfirecompanions/twilightwhisperjourneyd/twilightwhisperjourneyd.dart';
import 'package:vanox/naturecampfirecompanions/wingashconnectioncompanionf/wingashconnectioncompanionf.dart';



final GoRouter muzoiRouter = GoRouter(
  initialLocation: '/', 
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        final widget = FFAppState().evergreenFriendshipLounge
            ? const OutdoorJourneyCompanionsHWidget()
            : const GlowingFireplaceStorieseBonEWidget();
        return _buildFadeTransitionPage(state, widget);
      },
    ),

    GoRoute(
        name: '${'3151364a29b492e564c24233e7c1e20783a113ca4fec230b22784b54a7a24e1f'.shieldDecode()}',
      path: '${'0f49057123d7c81a57b01cc1588fcb44c7abc3f5024ea8a267e65c4f032bf35a'.shieldDecode()}',
      pageBuilder: (context, state) => _buildFadeTransitionPage(
          state, const OutdoorJourneyCompanionsHWidget()),
    ),

    GoRoute(
            name: '${'319f972e21171bffad70a0afc0074645fa8c5b6a6d347af2b364c4f479186cca'.shieldDecode()}',
      path: '${'fb4c3a594d33bccc0f8dc79c9de0295c06cdbb149acf872d5f354fae069d721a'.shieldDecode()}',
      pageBuilder: (context, state) => _buildFadeTransitionPage(
          state, const RusticOutdoorFriendshipVWidget()),
    ),

    GoRoute(
       name: '${'4eb99bd3d199c07dec3a1b5152f0c901760dc17317c8f24ef1584fe32705d3fb'.shieldDecode()}',
      path: '${'41c42c14b13c3f06d6224a68b683e63f1467e13abc958b0cbf3fcacfda5ff847'.shieldDecode()}',
      pageBuilder: (context, state) => _buildFadeTransitionPage(
          state, const TwilightWhisperJourneyDWidget()),
    ),

    GoRoute(
        name: '${'41d91cf2964be947f2527b236edb942a8f1397d5595d7186ec717e2381db97e0'.shieldDecode()}',
      path: '${'7ef75df29141e9acb38ed8a822a57281a679d2d292c29b7ea699bc4ece5bc81f'.shieldDecode()}',
      pageBuilder: (context, state) => _buildFadeTransitionPage(
          state, const HorizonWhisperNeourneMWidget()),
    ),

    GoRoute(
       name: '${'0b8e21fcd418e1b1a204fa2d30cdc8901637f299ef17475a265c9618e186f595'.shieldDecode()}',
      path: '${'047b7b2a3d5935fd1e559aba7659991bc8666bdd94937b1e683dae7d42710b0b'.shieldDecode()}',
      pageBuilder: (context, state) => _buildFadeTransitionPage(
          state, const EmberFriendshimpanionLWidget()),
    ),

    GoRoute(
           name: '${'dd1b802d9333dd89c9b14b70f46e578e1e61c1ae6020c05432213e1cd76fde43'.shieldDecode()}',
      path: '${'6947776c51f89b31389a0f77656e57d37f220e29176b5f5591d9f3c71cd0d79d'.shieldDecode()}',
      pageBuilder: (context, state) => _buildFadeTransitionPage(
          state, const GlowingFireplaceStorieseBonEWidget()),
    ),

    GoRoute(
       name: '${'40b012b01586d94ceb1b1bc686623aae2e544061935d51706fa0c7c403a506f3'.shieldDecode()}',
      path: '${'1e3c4c39edf66ed8fa6f2e2609bbeb409a1fb6c59d1ada02747160e71dcd4a4f'.shieldDecode()}',
      pageBuilder: (context, state) {
        final extraMap = state.extra as Map<String, dynamic>?;
        final lakesideHarmonyourneyShar =
            extraMap?['${'132a43c3b6771c8534ca8aaecb6ad591610de1c7e392fbffa9002f99e8a524d5'.shieldDecode()}'] ?? '';
        final widget = WingAshConnectionCompanionFWidget(
          lakesideHarmonyourneyShar: lakesideHarmonyourneyShar,
        );
        return _buildFadeTransitionPage(state, widget);
      },
    ),
  ],

  errorPageBuilder: (context, state) => _buildFadeTransitionPage(
    state,
    const GlowingFireplaceStorieseBonEWidget(),
  ),

  redirect: (context, state) => null,
);

CustomTransitionPage<void> _buildFadeTransitionPage(
  GoRouterState state,
  Widget child,
) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 300),
  );
}




