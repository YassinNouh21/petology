import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:petology/domain/static/models/first_section_model.dart';
import 'package:petology/domain/static/models/footer_model.dart';
import 'package:petology/domain/static/models/second_section_model.dart';
import 'package:petology/domain/static/static_service_interface.dart';
import 'package:petology/infrastructure/core/server_consts.dart';
import 'package:petology/infrastructure/core/service_exceptions..dart';
import 'package:petology/infrastructure/static/static_service.dart';

import '../../../domain/core/static_model.dart';

part 'static_service_state.dart';

@injectable
class StaticServiceCubit extends Cubit<StaticServiceState> {
  final StaticServiceInterface _staticService;
  StaticServiceCubit(this._staticService) : super(StaticServiceState.initial());

  void getFooter() async {
    emit(state.copyWith(isLoading: true));
    try {
      Footer response = await _staticService.getFooter();
      emit(state.copyWith(
          isLoading: false,
          requestType: RequestType.getFooter,
          static: response));
    } on DioError catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: DioExceptions.fromDioError(e).toString(),
      ));
    }
  }

  void getSecondSection() async {
    emit(state.copyWith(isLoading: true));
    try {
      SecondSection response = await _staticService.getSecondSection();
      emit(state.copyWith(
          isLoading: false,
          requestType: RequestType.getSecondSection,
          static: response));
    } on DioError catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: DioExceptions.fromDioError(e).toString(),
      ));
    }
  }

  void getFirstSection() async {
    emit(state.copyWith(isLoading: true));
    try {
      Static response = await _staticService.getFirstSection();
      emit(state.copyWith(
          isLoading: false,
          requestType: RequestType.getFirstSection,
          static: response));
    } on DioError catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: DioExceptions.fromDioError(e).toString(),
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
      ));
    }
  }

  void getListPetNeeds() async {
    emit(state.copyWith(isLoading: true));
    try {
      dynamic response = await _staticService.getListPetNeeds();
      emit(state.copyWith(
          isLoading: false,
          requestType: RequestType.getListPetNeeds,
          static: response));
    } on DioError catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: DioExceptions.fromDioError(e).toString(),
      ));
    }
  }
}
