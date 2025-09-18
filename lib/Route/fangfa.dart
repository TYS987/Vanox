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

  static Future togglePostMessage(int postId, {int? receiveUserId}) async {
    try {
      String token = FFAppState().campfireJourneyToken;

      if (token.isEmpty) {
        return false;
      }

      // 更新 token
      _apiManager.updateVibeToken(token);

      // 调用消息接口
      final result = await _apiManager.togglePostGlow(
        dynamicId: postId,
        receiveUserId: receiveUserId,
      );

      print("接口: $result");
      if (result.isNotEmpty) {
        FFAppState().starlightCampfireMessages = result;

        return true;
      } else {
        FFAppState().starlightCampfireMessages = [];
        return false;
      }
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


FFAppState().starlitCampfireVoiceChats = posts ;

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

  // /// 获取粉丝列表
  // static Future<List<dynamic>?> getUserFans() async {
  //   try {
  //     String userToken = FFAppState().userToken;

  //     if (userToken.isEmpty) {
  //       print('用户 token 为空');
  //       return null;
  //     }

  //     // 更新 token
  //     _apiManager.updateVibeToken(userToken);

  //     // connectionType = 1 表示粉丝
  //     final fansList =
  //         await _apiManager.fetchUserConnections(connectionType: 1);

  //     if (fansList != null && fansList.isNotEmpty) {
  //       print('到 ${fansList.length} 个');
  //       print("当前的关注用户里${fansList}");
  //       FFAppState().followedUsers = fansList;
  //       FFAppState().update(() {});
  //     } else {
  //       print('粉丝或列表为空');
  //     }

  //     return fansList;
  //   } catch (e) {
  //     print('失败: $e');
  //     return null;
  //   }
  // }

  // /// 获取所有动态详情数据（帖子 + 视频等，根据分类获取）
  // static Future<List<dynamic>?> getAllDynamicDetails() async {
  //   try {
  //     String userToken = FFAppState().userToken;

  //     if (userToken.isEmpty) {
  //       print('💔 用户 token 为空，无法获取动态详情数据');
  //       return null;
  //     }

  //     // 更新 token
  //     _apiManager.updateVibeToken(userToken);

  //     // 调用 fetchGlamPosts 获取动态数据
  //     final response = await _apiManager.fetchGlamPosts(
  //       current: 1, // 固定当前页
  //       size: 20, // 固定每页数量
  //       selectVersion: 2, // 固定版本
  //       dynamicClassify: 1, // 0 表示全部动态
  //       dynamicType: null, // 固定类型，可为空
  //       bundleId: null, // 应用标识，可为空
  //     );

  //     if (response['success'] == true && response['data'] != null) {
  //       List<dynamic> allDynamics = response['data'];

  //       // 根据 rareSeriesCompletion 排序（降序，最新的在前）
  //       allDynamics.sort((a, b) {
  //         final aTime = a['rareSeriesCompletion'] ?? 0;
  //         final bTime = b['rareSeriesCompletion'] ?? 0;
  //         return bTime.compareTo(aTime);
  //       });

  //       print("🎉 获取到所有动态数据 ${allDynamics}");
  //       print('总条数: ${allDynamics.length}');

  //       // 存储到 FFAppState（你可以根据需要分类存储）
  //       FFAppState().allDynamicPosts = allDynamics;
  //       FFAppState().update(() {});

  //       return allDynamics;
  //     } else {
  //       print('获取动态详情失败: ${response['message']}');
  //       return null;
  //     }
  //   } catch (e) {
  //     print('💔 获取动态详情异常: $e');
  //     return null;
  //   }
  // }

  // /// 获取所有知识库数据
  // static Future<List<dynamic>?> getAllKnowledgeBase() async {
  //   try {
  //     String userToken = FFAppState().userToken;

  //     if (userToken.isEmpty) {
  //       return null;
  //     }

  //     // 更新 token
  //     _apiManager.updateVibeToken(userToken);

  //     // 这里的 fetchGlamPosts 是你原来的动态接口
  //     // 如果有专门的知识库接口，请替换成 _apiManager.fetchKnowledgeBase()
  //     final response = await _apiManager.fetchGlamPosts(
  //       current: 1, // 固定当前页
  //       size: 10, // 固定每页数量
  //       selectVersion: 2, // 固定版本
  //       dynamicClassify: 1, // 这里原本是分类，可根据知识库需要调整
  //       dynamicType: 4, // 类型，可为空
  //       bundleId: null, // 应用标识，可为空
  //     );

  //     if (response['success'] == true && response['data'] != null) {
  //       List<dynamic> allKnowledge = response['data'];

  //       print(" 获取到所有知识库数据 ${allKnowledge}");

  //       // 存储到 FFAppState（你可以根据需要分类存储）
  //       FFAppState().knowledgeBase = allKnowledge;
  //       FFAppState().update(() {});

  //       print('当前的知识库数据${FFAppState().knowledgeBase}');

  //       return allKnowledge;
  //     } else {
  //       print('获取知识库失败: ${response['message']}');
  //       return null;
  //     }
  //   } catch (e) {
  //     print('💔 获取知识库异常: $e');
  //     return null;
  //   }
  // }

  // /// 关注用户
  // static Future<bool> followUser({
  //   required String userName,
  //   required int userId,
  //   dynamic? dynamicId, // 可以为 null
  // }) async {
  //   try {
  //     String userToken = FFAppState().userToken;
  //     if (userToken.isEmpty) return false;

  //     // 更新 token
  //     _apiManager.updateVibeToken(userToken);

  //     // 调用 manageUserVibe 接口关注用户
  //     final response = await _apiManager.manageUserVibe(
  //       beHandleUserName: userName,
  //       hanldeType: 1, // 1 表示关注
  //       dynamicId: dynamicId, // 可以为 null
  //       beHandleUserId: userId,
  //     );

  //     if (response != null && response['success'] == true) {
  //       print("点击关注后返回的数据${response}");
  //       return true;
  //     }

  //     return false;
  //   } catch (e) {
  //     print('💔 关注用户失败: $e');
  //     return false;
  //   }
  // }
}




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