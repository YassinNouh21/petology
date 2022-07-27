import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:petology/domain/auth/auth_service_interface.dart';
import 'package:petology/domain/auth/model/user_model.dart';
import 'package:petology/domain/core/server_error_model.dart';

part 'auth_service_state.dart';

@injectable
class AuthServiceCubit extends Cubit<AuthServiceState> {
  final AuthServiceInterface _authService;
  AuthServiceCubit(
    this._authService,
  ) : super(AuthServiceState.initial());

  void login(User user) async {
    emit(state.copyWith(isLoading: true));
    try {
      await _authService.signInWithEmailAndPassword(user);
      emit(state.copyWith(
        isLoading: false,
      ));
    } on DioError catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: ServerError(error: e.response?.data).toString(),
      ));
    }
  }

  void signUp(User user) async {
    emit(state.copyWith(isLoading: true));
    try {
      await _authService.createUserWithEmailAndPassword(user);
      emit(state.copyWith(
        isLoading: false,
      ));
    } on DioError catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: ServerError(error: e.response?.data).toString(),
      ));
    }
  }
}
