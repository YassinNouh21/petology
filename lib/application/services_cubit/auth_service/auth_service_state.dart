part of 'auth_service_cubit.dart';

class AuthServiceState {
  final String error;
  final bool isLoading;

  const AuthServiceState({
    required this.error,
    required this.isLoading,
  });
  AuthServiceState.initial()
      : error = '',
        isLoading = false;

  AuthServiceState copyWith({
    String? error,
    bool? isLoading,
  }) {
    return AuthServiceState(
      error: error ?? this.error,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
