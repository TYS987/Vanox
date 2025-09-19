import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:flutter/material.dart';

// API 配置类，定义基础 URL 和端点
class MuzoiApiSettings {
  static const String baseUrl =
      'https://mkl3dfg7jq.shop/backfour'; // 后端基础 URL  //https://mkl3dfg7jq.shop//backfour
  static const String defaultGlamKey = '57624642'; // 默认 API 密钥。 //
  static const int successCode = 200000; // 成功响应代码

  // API 端点映射，映射美甲社区功能
  static const Map<String, String> endpoints = {
    'signIn': 'widwmkkgopcrz/tohennubpuva', // 登录
    'users': 'uttfrz/dciajcmh', // 用户列表
    'profile': 'kuvbjexwlaz/csqnpfyvkvpfv', // 用户详情
    'posts': 'cqhegdggayaiejz/rruszcdea', // 帖子
    'message': 'sbxmqdzoz/qahjvxkhgfcte', // 消息查询

    // 混淆
    'room': 'cjzpgcuxbodz/cveuxrqe', //  虚拟房间
    'follow': 'hipezxojz/ncaycgfqgdjvjcf', // 关注/拉黑
    'connections': 'deyqtnvvwngz/mefiufsts', // 粉丝/关注
  };
}

// Dio 实现的 API 管理类
class MuzoiApiManagerDio {
  final String glamKey; // API 密钥
  String vibeToken; // 用户认证令牌（非 final，允许更新）
  late Dio _dio; // Dio 实例（使用 late 延迟初始化，允许重新配置）

  MuzoiApiManagerDio({
    this.glamKey = MuzoiApiSettings.defaultGlamKey,
    this.vibeToken = '',
  }) {
    // 初始化 Dio 实例
    _dio = Dio(BaseOptions(
      baseUrl: MuzoiApiSettings.baseUrl, // 基础 URL
      connectTimeout: const Duration(seconds: 30), // 连接超时
      receiveTimeout: const Duration(seconds: 30), // 接收超时
      headers: {
        'Content-Type': 'application/json', // 默认 JSON 格式
        'Key': glamKey, // API 密钥
        if (vibeToken.isNotEmpty) 'token': vibeToken, // 动态添加令牌
      },
    ));

    // 添加拦截器，用于日志和错误处理
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        print(' 请求: ${options.uri}');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        print('响应: ${response.statusCode}');
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        print('错误: ${e.message}');
        return handler.next(e);
      },
    ));
  }

  /// 更新认证令牌，动态修改 Dio headers
  void updateVibeToken(String newToken) {
    vibeToken = newToken; // 更新令牌
    _dio.options.headers['token'] =
        newToken.isNotEmpty ? newToken : null; // 更新 headers
    print('更新认证令牌: $newToken');
  }

  /// 解析响应
  Future<dynamic> _parseResponse(Response response) async {
    if (response.statusCode == 200) {
      final result = response.data;
      if (result['code'] == MuzoiApiSettings.successCode) {
        return result['data'];
      } else {
        throw ApiException(
          code: result['code'] ?? -1,
          message: result['message'] ?? '美甲社区请求失败',
        );
      }
    } else {
      throw HttpException(statusCode: response.statusCode ?? 500);
    }
  }

  /// 发送 API 请求
  Future<dynamic> _sendApiRequest({
    required String endpoint,
    required Map<String, dynamic> params,
  }) async {
    try {
      final response = await _dio.post(
        '/$endpoint',
        data: jsonEncode(params),
      );
      return await _parseResponse(response);
    } catch (e) {
      print(' 请求失败: $e');
      rethrow;
    }
  }

  /// 用户登录
  Future<Map<String, dynamic>?> signInWithVibe({
    required String email,
    required String password,
    String bundleId = '',
  }) async {
    try {
      final response = await _sendApiRequest(
        endpoint: MuzoiApiSettings.endpoints['signIn']!,
        params: {
          'trailMaster': email, // 用户邮箱
          'outdoorMaster': password, // 用户密码
          if (bundleId.isNotEmpty) 'wildernessMaster': bundleId, // 应用标识
        },
      );
      if (response != null && response['token'] != null) {
        updateVibeToken(response['token']); // 登录成功后更新令牌
      }
      return response as Map<String, dynamic>?;
    } catch (e) {
      print(' 登录失败: $e');
      return null;
    }
  }

  /// 获取用户列表
  Future<List<dynamic>?> fetchGlamUsers() async {
    try {
      final response = await _sendApiRequest(
        endpoint: MuzoiApiSettings.endpoints['users']!,
        params: {},
      );
      return response is List ? response : response['data'] as List<dynamic>?;
    } catch (e) {
      print('💔 [Users] 获取用户列表失败: $e');
      return null;
    }
  }

  /// 获取用户详情
  Future<Map<String, dynamic>?> fetchUserSparkle({required int userId}) async {
    try {
      print('🎨 [Profile] 获取用户详情: $userId');
      final response = await _sendApiRequest(
        endpoint: MuzoiApiSettings.endpoints['profile']!,
        params: {'mountainScout': userId},
      );
      return response as Map<String, dynamic>?;
    } catch (e) {
      print('💔 [Profile] 获取用户详情失败: $e');
      return null;
    }
  }

  /// 查询动态
  Future<Map<String, dynamic>> fetchGlamPosts({
    required int current,
    required int size,
    String? bundleId,
    required int selectVersion,
    int? dynamicClassify,
    int? dynamicType,
  }) async {
    try {
      print(' page=$current, size=$size');
      final response = await _sendApiRequest(
        endpoint: MuzoiApiSettings.endpoints['posts']!,
        params: {
          'wildernessConnection': current, // 当前页
          'trailTales': size, // 每页大小
          'natureLovers': bundleId, // 应用标识
          'adventureStories': selectVersion, // 选择版本
          'outdoorStories': dynamicClassify, // 动态分类
          'campfireCircle': dynamicType, // 动态类型
        },
      );
      if (response is List) {
        return {
          'success': true,
          'message': '请求成功',
          'data': response,
        };
      }
      if (response is Map<String, dynamic>) {
        return {
          'success': response['code'] == MuzoiApiSettings.successCode,
          'message': response['message'] ?? '无返回信息',
          'data': response['data'],
        };
      }
      return {
        'success': false,
        'message': '响应格式错误: ${response.runtimeType}',
        'data': null,
      };
    } catch (e) {
      print('获取帖子失败: $e');
      return {
        'success': false,
        'message': '异常: $e',
        'data': null,
      };
    }
  }

  // 获取消息

  Future<List<dynamic>?> fetchmessage() async {
    try {
      final response = await _sendApiRequest(
        endpoint: MuzoiApiSettings.endpoints['message']!,
        params: {},
      );
      return response is List ? response : response['data'] as List<dynamic>?;
    } catch (e) {
      print('获取消息 $e');
      return null;
    }
  }

  /// 获去虚拟房间
  Future<Map<String, dynamic>> fetchroom({
    required int liveStatus,
    required int size,
    String? bundleId,
    required int selectType,
    int? current,
  }) async {
    try {
      print(' page=$liveStatus, size=$size');
      final response = await _sendApiRequest(
        endpoint: MuzoiApiSettings.endpoints['room']!,
        params: {
          'campingMaster': liveStatus,
          'trailExpert': size,
          'outdoorExpert': bundleId,
          'wildernessExpert': selectType,
          'adventureMaster': current,
        },
      );

      print("虚拟房间的数据${response}");
      if (response is List) {
        return {
          'success': true,
          'message': '请求成功',
          'data': response,
        };
      }
      if (response is Map<String, dynamic>) {
        return {
          'success': response['code'] == MuzoiApiSettings.successCode,
          'message': response['message'] ?? '无返回信息',
          'data': response['data'],
        };
      }
      return {
        'success': false,
        'message': '响应格式错误: ${response.runtimeType}',
        'data': null,
      };
    } catch (e) {
      print(' 获取帖子失败: $e');
      return {
        'success': false,
        'message': '异常: $e',
        'data': null,
      };
    }
  }
}

// 异常类
class ApiException implements Exception {
  final int code;
  final String message;
  ApiException({required this.code, required this.message});
  @override
  String toString() => 'ApiException($code): $message';
}

class HttpException implements Exception {
  final int statusCode;
  HttpException({required this.statusCode});
  @override
  String toString() => 'HttpException($statusCode)';
}
