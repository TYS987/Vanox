import 'package:flutter/material.dart';
import 'package:vanox/Route/api.dart';
import 'package:vanox/app_state.dart';

// 用户列表数据
class MuzoiApiHelper {
  static final MuzoiApiManagerDio _apiManager = MuzoiApiManagerDio();

  static Future<List<dynamic>?> getGlamUsers() async {
    try {
      String userToken = FFAppState().campfireJourneyToken;
      if (userToken.isNotEmpty) {
        _apiManager.updateVibeToken(userToken);
      }

      final results = await _apiManager.fetchGlamUsers();
      FFAppState().starlightCampfireProfiles = results ?? [];
      FFAppState().update(() {});
      print("获取到的用户列表的所有数据;${FFAppState().starlightCampfireProfiles}");
      return results;
    } catch (e) {
      print('失败: $e');
      return null;
    }
  }

  /// 获取用户详情，静态方法可直接调用
  static Future<Map<String, dynamic>> getUserProfile(int userId) async {
    try {
      String userToken = FFAppState().campfireJourneyToken;

      if (userToken.isEmpty) {
        return {};
      }

      _apiManager.updateVibeToken(userToken);
      final results = await _apiManager.fetchUserSparkle(userId: userId);

      FFAppState().wildernessExpeditionUserProfile = results ?? {};
      FFAppState().update(() {});
      print("当前用户的所有数据${FFAppState().wildernessExpeditionUserProfile}");

      return results ?? {};
    } catch (e) {
      print('失败: $e');
      return {};
    }
  }

// 获取视屏的所有数据
  static Future<List<dynamic>?> getGlamPosts() async {
    try {
      String userToken = FFAppState().campfireJourneyToken;

      if (userToken.isEmpty) {
        return null;
      }

      // 更新 token
      _apiManager.updateVibeToken(userToken);

      // 调用 fetchGlamPosts 获取帖子（参数写死）
      final response = await _apiManager.fetchGlamPosts(
        current: 1,
        size: 10,
        selectVersion: 4,
        dynamicType: 3,
        bundleId: '57624642',
      );

      if (response['success'] == true && response['data'] != null) {
        List<dynamic> posts = response['data'];

        FFAppState().virtualWildernessRetreatRooms = posts;
        FFAppState().update(() {});
        print("获取视屏的所有数据${FFAppState().virtualWildernessRetreatRooms}");

        return posts;
      } else {
        print('失败: ${response['message']}');
        return null;
      }
    } catch (e) {
      print('异常: $e');
      return null;
    }
  }

  /// 获取动态详情
  static Future<List<dynamic>?> getChaxuanVideoDetails() async {
    try {
      String userToken = FFAppState().campfireJourneyToken;

      if (userToken.isEmpty) {
        return null;
      }
      _apiManager.updateVibeToken(userToken);
      final response = await _apiManager.fetchGlamPosts(
        current: 1,
        size: 10,
        selectVersion: 4,
        dynamicClassify: null,
        dynamicType: 2,
        bundleId: '57624642',
      );

      if (response['success'] == true && response['data'] != null) {
        List<dynamic> Dideos = response['data'];
        // print("获取到的视频数据 ${Dideos}");
        print(' ${Dideos.length} ');
        print("${Dideos}");

        // 存储到 FFAppState
        FFAppState().starlitCampfireJourneyPosts =
            Dideos.map((e) => Map<String, dynamic>.from(e as Map)).toList();
        ;

        FFAppState().update(() {});

        return Dideos;
      } else {
        print('失败: ${response['message']}');
        return null;
      }
    } catch (e) {
      print('异常: $e');
      return null;
    }
  }

  /// 消息数据

  static Future togglePostMessage() async {
    try {
      String token = FFAppState().campfireJourneyToken;

      if (token.isEmpty) {
        return false;
      }

      // 更新 token
      _apiManager.updateVibeToken(token);

      // 调用消息接口
      final result = await _apiManager.fetchmessage();

      print("发送消息接口返回的数据:$result");
      FFAppState().starlightCampfireMessages = result != null
          ? result.map((e) => Map<String, dynamic>.from(e as Map)).toList()
          : [];
    } catch (e) {
      print('异常: $e');
      return false;
    }
  }

// 获取虚拟房间

  static Future<List<dynamic>?> getGlamPostsRoom() async {
    try {
      String userToken = FFAppState().campfireJourneyToken;

      if (userToken.isEmpty) {
        return null;
      }
      _apiManager.updateVibeToken(userToken);

      final response = await _apiManager.fetchroom(
        current: 1,
        size: 10,
        liveStatus: 0,
        selectType: 2,
        bundleId: '57624642',
      );

      if (response['success'] == true && response['data'] != null) {
        List<dynamic> posts = response['data'];

        FFAppState().starlitCampfireVoiceChats = posts;

        print("虚拟房间的数据${FFAppState().starlitCampfireVoiceChats}");
        print("虚拟房间数量${posts.length}");

        return posts;
      } else {
        print('失败: ${response['message']}');
        return null;
      }
    } catch (e) {
      print('异常: $e');
      return null;
    }
  }
}

// loding
Widget showLoadingWidget() {
  // 返回一个可直接放在 Widget 树里的加载框
  return Stack(
    children: [
      // 半透明黑色背景
      Positioned.fill(
        child: Container(
          color: Colors.black.withOpacity(0.7),
        ),
      ),
      // 中心加载动画
      Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ],
  );
}
