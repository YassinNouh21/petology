import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:petology/domain/static/models/first_section_model.dart';
import 'package:petology/domain/static/models/footer_model.dart';
import 'package:petology/domain/static/static_service_interface.dart';
import 'package:petology/infrastructure/core/service_exceptions..dart';
import 'package:petology/infrastructure/static/static_service.dart';

import '../../../domain/core/static_model.dart';

part 'static_service_state.dart';

@injectable
class StaticServiceCubit extends Cubit<StaticServiceState> {
  final StaticServiceInterface _staticService;
  StaticServiceCubit(this._staticService) : super(StaticServiceState.initial());

  void getFooterSection() async {
    emit(state.copyWith(isLoading: true));
    try {
      Footer response = await _staticService.getFooter();
      emit(state.copyWith(
          isLoading: false,
          requestType: RequestType.getFooter,
          static: response));
    } on DioError catch (e) {
      print("cubit error catch ${DioExceptions.fromDioError(e).toString()}");
      emit(state.copyWith(
        isLoading: false,
        error: DioExceptions.fromDioError(e).toString(),
      ));
    }
  }
}
