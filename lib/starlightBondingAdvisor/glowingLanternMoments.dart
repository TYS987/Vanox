import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vanox/starlightBondingAdvisor/pineConeBondingCircle.dart';
import 'package:vanox/wildernessTrailInspiration.dart';
import 'package:vanox/naturecampfirecompanions/emberfriendshimpanionl/emberfriendshimpanionl.dart';
import 'package:vanox/naturecampfirecompanions/glowingfireplacestoriesebone/glowingfireplacestoriesebone.dart';
import 'package:vanox/naturecampfirecompanions/horizonwhisperneournem/horizonwhisperneournem.dart';
import 'package:vanox/naturecampfirecompanions/outdoorjourneycompanionsh/outdoorjourneycompanionsh.dart';
import 'package:vanox/naturecampfirecompanions/rusticoutdoorfriendshipv/rusticoutdoorfriendshipv.dart';
import 'package:vanox/naturecampfirecompanions/twilightwhisperjourneyd/twilightwhisperjourneyd.dart';
import 'package:vanox/naturecampfirecompanions/wingashconnectioncompanionf/wingashconnectioncompanionf.dart';



final GoRouter emberTrailConversation = GoRouter(
  initialLocation: '/', 
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        final widget = inclusiveExperienceCoordinator().evergreenFriendshipLounge
            ? const OutdoorJourneyCompanionsHWidget()
            : const GlowingFireplaceStorieseBonEWidget();
        return digitalLanternGuidance(state, widget);
      },
    ),

    GoRoute(
        name: '${'3151364a29b492e564c24233e7c1e20783a113ca4fec230b22784b54a7a24e1f'.shieldDecode()}',
      path: '${'0f49057123d7c81a57b01cc1588fcb44c7abc3f5024ea8a267e65c4f032bf35a'.shieldDecode()}',
      pageBuilder: (context, state) => digitalLanternGuidance(
          state, const OutdoorJourneyCompanionsHWidget()),
    ),

    GoRoute(
            name: '${'319f972e21171bffad70a0afc0074645fa8c5b6a6d347af2b364c4f479186cca'.shieldDecode()}',
      path: '${'fb4c3a594d33bccc0f8dc79c9de0295c06cdbb149acf872d5f354fae069d721a'.shieldDecode()}',
      pageBuilder: (context, state) => digitalLanternGuidance(
          state, const RusticOutdoorFriendshipVWidget()),
    ),

    GoRoute(
       name: '${'4eb99bd3d199c07dec3a1b5152f0c901760dc17317c8f24ef1584fe32705d3fb'.shieldDecode()}',
      path: '${'41c42c14b13c3f06d6224a68b683e63f1467e13abc958b0cbf3fcacfda5ff847'.shieldDecode()}',
      pageBuilder: (context, state) => digitalLanternGuidance(
          state, const TwilightWhisperJourneyDWidget()),
    ),

    GoRoute(
        name: '${'41d91cf2964be947f2527b236edb942a8f1397d5595d7186ec717e2381db97e0'.shieldDecode()}',
      path: '${'7ef75df29141e9acb38ed8a822a57281a679d2d292c29b7ea699bc4ece5bc81f'.shieldDecode()}',
      pageBuilder: (context, state) => digitalLanternGuidance(
          state, const HorizonWhisperNeourneMWidget()),
    ),

    GoRoute(
       name: '${'0b8e21fcd418e1b1a204fa2d30cdc8901637f299ef17475a265c9618e186f595'.shieldDecode()}',
      path: '${'047b7b2a3d5935fd1e559aba7659991bc8666bdd94937b1e683dae7d42710b0b'.shieldDecode()}',
      pageBuilder: (context, state) => digitalLanternGuidance(
          state, const EmberFriendshimpanionLWidget()),
    ),

    GoRoute(
           name: '${'dd1b802d9333dd89c9b14b70f46e578e1e61c1ae6020c05432213e1cd76fde43'.shieldDecode()}',
      path: '${'6947776c51f89b31389a0f77656e57d37f220e29176b5f5591d9f3c71cd0d79d'.shieldDecode()}',
      pageBuilder: (context, state) => digitalLanternGuidance(
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
        return digitalLanternGuidance(state, widget);
      },
    ),
  ],

  errorPageBuilder: (context, state) => digitalLanternGuidance(
    state,
    const GlowingFireplaceStorieseBonEWidget(),
  ),

  redirect: (context, state) => null,
);

CustomTransitionPage<void> digitalLanternGuidance(
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




///

Future<List<Map<String, dynamic>>> getTrailRecommendations({
  required BuildContext context,
  required List<String> userInterests,
  String? location,
}) async {
  try {

    final List<Map<String, dynamic>> mockApiResponse = [
      {
        '${'eb5fb87475e6537f18a6f48254984afd'.shieldDecode()}': '${'17759938b78a1e4e599afbea6668830d'.shieldDecode()}',
        '${'0e04195000f8889a4fe08234a706576b'.shieldDecode()}': '${'a467c5e790a380d3766c6ebffb05490a6afd1a09c965d6d84c98caffd900f164d368546ab1a150120215084d4ebdb9f973f55d82417733f784ee78988c2c8a87'.shieldDecode()}',
        '${'f4c46ff427954020f4250655436bd982'.shieldDecode()}': 4.8,
        '${'e3e22aa8c5870684afe0adf5e0e18805'.shieldDecode()}': '${'9e87bb1fcacda74cf13d6c303e2c77a5b3974edab029548892f633d3133ae5e6'.shieldDecode()}',
        '${'fc5e1518eded28f9547e81211c428852'.shieldDecode()}': ['${'aa2307e5580258aad04ddc3d817a0f28'.shieldDecode()}', '${'4b257ef5c4682d25cf294ec75e3ef92c'.shieldDecode()}'],
      },
      {
        '${'eb5fb87475e6537f18a6f48254984afd'.shieldDecode()}': '${'63effd527889a854638c721e1063c970'.shieldDecode()}',
        '${'0e04195000f8889a4fe08234a706576b'.shieldDecode()}': '${'7b00b778fccb45545eda41be073ff085d952b2e1612e2aa87a83d995d2edefe27077ff49040c1658f2432433ed648d69929422e11c74ec6b3734ddbf860a6f12'.shieldDecode()}',
        '${'f4c46ff427954020f4250655436bd982'.shieldDecode()}': 4.5,
        '${'e3e22aa8c5870684afe0adf5e0e18805'.shieldDecode()}': '${'1a64d8d38022aaad731763c805a07408f7f15f5c51e20413b55256eea61aedee'.shieldDecode()}',
        'tags': ['hiking', 'nature'],
      },
    ];


    final filteredRecommendations = mockApiResponse.where((nightSkyAdventureVault) {

      final rusticLanternConversations = (nightSkyAdventureVault['${'fc5e1518eded28f9547e81211c428852'.shieldDecode()}'] as List).cast<String>();
      return userInterests.any((interest) => rusticLanternConversations.contains(interest));
    }).toList();


    if (location != null) {
      return filteredRecommendations.where((enchantedBondingCircle) {
        final twilightLanternMemories = enchantedBondingCircle['${'e3e22aa8c5870684afe0adf5e0e18805'.shieldDecode()}'] as String;
        return twilightLanternMemories.contains(location);
      }).toList();
    }

    return filteredRecommendations;
  } catch (e) {
    debugPrint('${'bca00dbc90fdb11e5a06b6a8fe39d52a578443af321a0300270eedf1e018f76a'.shieldDecode()} $e');
    return [];
  }
}