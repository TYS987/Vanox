

import 'package:vanox/Route/api.dart';
import 'package:vanox/app_state.dart';

class MuzoiApiHelper {
  static final MuzoiApiManagerDio _apiManager = MuzoiApiManagerDio();

  static Future<List<dynamic>?> getGlamUsers() async {
    try {
      String userToken = FFAppState().campfireJourneyToken;
      if (userToken.isNotEmpty) {
        _apiManager.updateVibeToken(userToken);
      }

      final results = await _apiManager.fetchGlamUsers();
      print('列表: $results');
     
      // FFAppState().starlightCampfireProfiles = results;
      // FFAppState().update(() {});
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
        print('用户 token 为空');
        return {};
      }

      // 更新 token
      _apiManager.updateVibeToken(userToken);

      // 调用获取用户详情接口
      final results = await _apiManager.fetchUserSparkle(userId: userId);
      print('🎨 用户详情: $results');

      // 如果 results 为 null，则用空 Map
      // FFAppState().userDetails = results ?? {};
      // FFAppState().update(() {});

      return results ?? {};
    } catch (e) {
      print('失败: $e');
      return {};
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

  // static Future<List<dynamic>?> getGlamPosts() async {
  //   try {
  //     String userToken = FFAppState().userToken;

  //     if (userToken.isEmpty) {
  //       print('用户 token 为空，');
  //       return null;
  //     }

  //     // 更新 token
  //     _apiManager.updateVibeToken(userToken);

  //     // 调用 fetchGlamPosts 获取帖子（参数写死）
  //     final response = await _apiManager.fetchGlamPosts(
  //       current: 1,
  //       size: 10,
  //       selectVersion: 2,
  //       dynamicClassify: 1,
  //       dynamicType: 5,
  //       bundleId: null,
  //     );

  //     if (response['success'] == true && response['data'] != null) {
  //       List<dynamic> posts = response['data'];

  //       // 根据 rareSeriesCompletion 排序（降序，时间最新的在前）
  //       posts.sort((a, b) {
  //         // 确保字段存在，否则返回 0
  //         final aTime = a['rareSeriesCompletion'] ?? 0;
  //         final bTime = b['rareSeriesCompletion'] ?? 0;
  //         return bTime.compareTo(aTime); // 降序
  //       });

  //       print('${posts.length} ');

  //       // 存储到 FFAppState
  //       FFAppState().glamPosts = posts;
  //       FFAppState().update(() {});
  //       print('${FFAppState().glamPosts}');

  //       return posts;
  //     } else {
  //       print('失败: ${response['message']}');
  //       return null;
  //     }
  //   } catch (e) {
  //     print('异常: $e');
  //     return null;
  //   }
  // }

  // /// 点赞/取消点赞帖子
  // static Future<bool> togglePostLike(int postId) async {
  //   try {
  //     String token = FFAppState().userToken;

  //     if (token.isEmpty) {
  //       print('用户 token 为空');
  //       return false;
  //     }

  //     // 更新 token
  //     _apiManager.updateVibeToken(token);

  //     // 调用点赞接口
  //     final result = await _apiManager.togglePostGlow(dynamicId: postId);
  //     print('结果: $result');
  //     return result;
  //   } catch (e) {
  //     print('异常: $e');
  //     return false;
  //   }
  // }

  // /// 获取茶轩视频详情（固定参数示例）
  // static Future<List<dynamic>?> getChaxuanVideoDetails() async {
  //   try {
  //     String userToken = FFAppState().userToken;

  //     if (userToken.isEmpty) {
  //       print('token 为空');
  //       return null;
  //     }

  //     // 更新 token
  //     _apiManager.updateVibeToken(userToken);

  //     // 调用 fetchGlamPosts（可改成 fetchVideoPosts 如果后端有专门接口）
  //     final response = await _apiManager.fetchGlamPosts(
  //       current: 1, // 固定当前页
  //       size: 10, // 固定每页数量
  //       selectVersion: 2, // 固定版本
  //       dynamicClassify: 2, // 茶轩视频分类（假设 2 为视频）
  //       dynamicType: null, // 固定类型
  //       bundleId: null, // 应用标识
  //     );

  //     if (response['success'] == true && response['data'] != null) {
  //       List<dynamic> videos = response['data'];

  //       // 根据 rareSeriesCompletion 排序（降序，最新的视频在前）
  //       videos.sort((a, b) {
  //         final aTime = a['rareSeriesCompletion'] ?? 0;
  //         final bTime = b['rareSeriesCompletion'] ?? 0;
  //         return bTime.compareTo(aTime);
  //       });
  //       print("获取到的视频数据 ${videos}");
  //       print(' ${videos.length} ');

  //       // 存储到 FFAppState
  //       FFAppState().chaxuanVideos = videos;

  //       FFAppState().update(() {});

  //       return videos;
  //     } else {
  //       print('失败: ${response['message']}');
  //       return null;
  //     }
  //   } catch (e) {
  //     print('异常: $e');
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
