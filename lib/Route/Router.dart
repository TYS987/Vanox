import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vanox/app_state.dart';
import 'package:vanox/naturecampfirecompanions/emberfriendshimpanionl/emberfriendshimpanionl.dart';
import 'package:vanox/naturecampfirecompanions/glowingfireplacestoriesebone/glowingfireplacestoriesebone.dart';
import 'package:vanox/naturecampfirecompanions/horizonwhisperneournem/horizonwhisperneournem.dart';
import 'package:vanox/naturecampfirecompanions/outdoorjourneycompanionsh/outdoorjourneycompanionsh.dart';
import 'package:vanox/naturecampfirecompanions/rusticoutdoorfriendshipv/rusticoutdoorfriendshipv.dart';
import 'package:vanox/naturecampfirecompanions/twilightwhisperjourneyd/twilightwhisperjourneyd.dart';
import 'package:vanox/naturecampfirecompanions/wingashconnectioncompanionf/wingashconnectioncompanionf.dart';



final GoRouter muzoiRouter = GoRouter(
  initialLocation: '/', // 初始路由为首页
  routes: [
    // 首页路由，根据 FFAppState 动态选择页面
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        final widget = FFAppState().evergreenFriendshipLounge
            ? const OutdoorJourneyCompanionsHWidget()
            : const GlowingFireplaceStorieseBonEWidget();
        return _buildFadeTransitionPage(state, widget);
      },
    ),
    // 首页页面
    GoRoute(
        name: 'outdoorJourneyCompanionsH',
      path: '/outdoorJourneyCompanionsH',
      pageBuilder: (context, state) => _buildFadeTransitionPage(
          state, const OutdoorJourneyCompanionsHWidget()),
    ),
    // 视屏动态页
    GoRoute(
            name: 'rusticOutdoorFriendshipV',
      path: '/rusticOutdoorFriendshipV',
      pageBuilder: (context, state) => _buildFadeTransitionPage(
          state, const RusticOutdoorFriendshipVWidget()),
    ),
    // 消息页
    GoRoute(
       name: 'twilightWhisperJourneyD',
      path: '/twilightWhisperJourneyD',
      pageBuilder: (context, state) => _buildFadeTransitionPage(
          state, const TwilightWhisperJourneyDWidget()),
    ),
    // 个人中心页面
    GoRoute(
        name: 'horizonWhisperNeourneM',
      path: '/horizonWhisperNeourneM',
      pageBuilder: (context, state) => _buildFadeTransitionPage(
          state, const HorizonWhisperNeourneMWidget()),
    ),
    // 登录页面
    GoRoute(
       name: 'emberFriendshimpanionL',
      path: '/emberFriendshimpanionL',
      pageBuilder: (context, state) => _buildFadeTransitionPage(
          state, const EmberFriendshimpanionLWidget()),
    ),
      // 快速登录
    GoRoute(
           name: 'glowingFireplaceStorieseBonE',
      path: '/glowingFireplaceStorieseBonE',
      pageBuilder: (context, state) => _buildFadeTransitionPage(
          state, const GlowingFireplaceStorieseBonEWidget()),
    ),
    // H5 页面，支持参数传递
    GoRoute(
       name: 'wingAshConnectionCompanionF',
      path: '/wingAshConnectionCompanionF',
      pageBuilder: (context, state) {
        final extraMap = state.extra as Map<String, dynamic>?;
        final lakesideHarmonyourneyShar =
            extraMap?['lakesideHarmonyourneyShar'] ?? '';
        final widget = WingAshConnectionCompanionFWidget(
          lakesideHarmonyourneyShar: lakesideHarmonyourneyShar,
        );
        return _buildFadeTransitionPage(state, widget);
      },
    ),
  ],
  // 错误页面
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




