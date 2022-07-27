import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:petology/domain/core/static_model.dart';
import 'package:petology/domain/static/models/first_section_model.dart';
import 'package:petology/domain/static/models/footer_model.dart';
import 'package:petology/domain/static/models/pet_needs_model.dart';
import 'package:petology/domain/static/models/second_section_model.dart';
import 'package:petology/domain/static/static_service_interface.dart';
import 'package:petology/infrastructure/core/server_consts.dart';
import 'package:petology/infrastructure/core/service_exceptions..dart';

@LazySingleton(as: StaticServiceInterface)
class StaticService implements StaticServiceInterface {
  StaticService();
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 5000,
    ),
  );

  @override
  Future<Static> getFirstSection() async {
    try {
      FirstSection response = await _dio
          .get(firstSection)
          .then((value) => FirstSection.fromMap(value.data));
      return response;
    } on DioError catch (e) {
      rethrow;
    }
  }

  @override
  Future getFooter() async {
    try {
      Footer response =
          await _dio.get(footer).then((value) => Footer.fromMap(value.data));
      return response;
    } on DioError catch (e) {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  dynamic getListPetNeeds() async {
    try {
      dynamic response = await _dio
          .get(petNeeds)
          .then((value) => value.data.map((e) => PetNeeds.fromMap(e)).toList());

      return response;
    } on DioError catch (e) {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SecondSection> getSecondSection() async {
    try {
      SecondSection response = await _dio
          .get(secondSection)
          .then((value) => SecondSection.fromMap(value.data));
      return response;
    } on DioError {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

// TODO: implement getStaticById
  @override
  Future getStaticById(String id) {
    throw UnimplementedError();
  }
}
