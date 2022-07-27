part of 'static_service_cubit.dart';

enum RequestType {
  getFirstSection,
  getSecondSection,
  getFooter,
  getListPetNeeds,
}

class StaticServiceState extends Equatable {
  final String error;
  final bool isLoading;
  final RequestType requestType;
  final dynamic static;

  const StaticServiceState({
    required this.error,
    required this.isLoading,
    required this.requestType,
    required this.static,
  });
  StaticServiceState.initial()
      : error = '',
        isLoading = false,
        requestType = RequestType.getFirstSection,
        static = FirstSection(body: '', title: '');

  StaticServiceState copyWith({
    String? error,
    bool? isLoading,
    RequestType? requestType,
    dynamic static,
  }) {
    return StaticServiceState(
      error: error ?? this.error,
      isLoading: isLoading ?? this.isLoading,
      requestType: requestType ?? this.requestType,
      static: static ?? this.static,
    );
  }

  bool get isFailure => error.isNotEmpty;
  @override
  List<Object?> get props => [error, isLoading, requestType, static];
}
