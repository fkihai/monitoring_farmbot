import 'dart:developer';

import 'package:flutter/foundation.dart';
import '../models/user_model.dart';
import 'package:dio/dio.dart';

import '../remote/api_endpoint.dart';

class AuthRepositroy {
  static Future<User?> login({
    required String email,
    required String password,
  }) async {
    try {
      final dio = Dio();
      dio.options.baseUrl = ApiEndpoint.baseUrl;
      Map<String, dynamic> params = {
        "email": email,
        "password": password,
      };
      final response = await dio.post(ApiEndpoint.singIn, data: params);
      if (response.statusCode == 200) {
        User bigData = User.fromJson(response.data);
        return bigData;
      }
      return null;
    } catch (e) {
      if (kDebugMode) {
        log(e.toString(), name: 'AUTH USER');
      }
    }
    return null;
  }
}
