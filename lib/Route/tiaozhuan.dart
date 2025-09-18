import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vanox/app_state.dart';

Future<void> navigateToH5Page({
  required BuildContext context,
  required String pagePath,
  Map<String, dynamic>? params,
  VoidCallback? onReturnRefresh,
}) async {
  final baseUrl = 'https://mkl3dfg7jq.shop/#/';

  String query = '';
  if (params != null && params.isNotEmpty) {
    query = params.entries.map((e) => '${e.key}=${e.value}').join('&');
  }

  final token = FFAppState().campfireJourneyToken;
  final appId = FFAppState().starlitCompanionId;

  final fullUrl = '$baseUrl$pagePath${query.isNotEmpty ? '?$query' : ''}'
      '${query.isNotEmpty ? '&' : '?'}token=$token&appID=$appId';

  final encodedUrl = Uri.encodeComponent(fullUrl);

  // 等待页面关闭
  final result = await GoRouter.of(context).push(
    '/wingAshConnectionCompanionF',
    extra: {
      'lakesideHarmonyourneyShar': encodedUrl,
    },
  );

  // 页面返回后执行回调
  if (result != null && onReturnRefresh != null) {
    onReturnRefresh();
  }
}
