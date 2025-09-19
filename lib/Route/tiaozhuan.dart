import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vanox/app_state.dart';

Future<void> interstellarJourneyWebNavigator({
  required BuildContext context,
  required String quantumPortalPath,
  Map<String, dynamic>? cosmicQueryParams,
  VoidCallback? onGalaxyReturnRefresh,
}) async {
  final baseUrl = 'https://mkl3dfg7jq.shop/#/';

  String query = '';
  if (cosmicQueryParams != null && cosmicQueryParams.isNotEmpty) {
    query = cosmicQueryParams.entries.map((e) => '${e.key}=${e.value}').join('&');
  }

  final astroToken = FFAppState().campfireJourneyToken;
  final nebulaAppId = '57624642';

  final fullUrl = '$baseUrl$quantumPortalPath${query.isNotEmpty ? '?$query' : ''}'
      '${query.isNotEmpty ? '&' : '?'}token=$astroToken&appID=$nebulaAppId';

  final encodedUrl = Uri.encodeComponent(fullUrl);

  // 等待页面关闭
  final result = await GoRouter.of(context).push(
    '/wingAshConnectionCompanionF',
    extra: {
      'lakesideHarmonyourneyShar': encodedUrl,
    },
  );

  // 页面返回后执行回调
  if (result != null && onGalaxyReturnRefresh != null) {
    onGalaxyReturnRefresh();
  }
}