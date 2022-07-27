import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:petology/domain/auth/model/user_model.dart';
import 'package:petology/domain/core/server_error_model.dart';
import 'package:petology/infrastructure/core/service_exceptions..dart';

import '../../domain/auth/auth_service_interface.dart';
import '../core/server_consts.dart';

@LazySingleton(as: AuthServiceInterface)
class AuthService implements AuthServiceInterface {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 5000,
    ),
  );
  final _storage = const FlutterSecureStorage();

  @override
  Future<void> createUserWithEmailAndPassword(User user) async {
    return await _dio
        .post(
      register,
      data: user.toJson(),
    )
        .then((response) {
      String accessToken = response.data['accessToken'];
      _storage.write(key: 'accessToken', value: accessToken);
    });
  }

  @override
  Future<void> currentUser() {
    // TODO: implement currentUser
    throw UnimplementedError();
  }

  @override
  Future<void> loginWithFacebook() {
    // TODO: implement loginWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<void> loginWithGoogle() {
    // TODO: implement loginWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signInWithEmailAndPassword(User user) async {
    return await _dio
        .post(
      login,
      data: user.userSignToMap(),
    )
        .then((response) {
      String accessToken = response.data['accessToken'];
      _storage.write(key: 'accessToken', value: accessToken);
    });
  }
}
