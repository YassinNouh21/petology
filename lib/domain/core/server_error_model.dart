import 'dart:convert';

class ServerError {
  final Error error;
  const ServerError({
    required this.error,
  });

  ServerError copyWith({
    Error? error,
  }) {
    return ServerError(
      error: error ?? this.error,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'error': error.toMap()});

    return result;
  }

  factory ServerError.fromMap(Map<String, dynamic> map) {
    return ServerError(
      error: Error.fromMap(map['error']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ServerError.fromJson(String source) =>
      ServerError.fromMap(json.decode(source));

  @override
  String toString() => 'ServerError(error: $error)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ServerError && other.error == error;
  }

  @override
  int get hashCode => error.hashCode;
}

class Error {
  final int statusCode;
  final String name;
  final String message;
  const Error({
    required this.statusCode,
    required this.name,
    required this.message,
  });

  Error copyWith({
    int? statusCode,
    String? name,
    String? message,
  }) {
    return Error(
      statusCode: statusCode ?? this.statusCode,
      name: name ?? this.name,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'statusCode': statusCode});
    result.addAll({'name': name});
    result.addAll({'message': message});

    return result;
  }

  factory Error.fromMap(Map<String, dynamic> map) {
    return Error(
      statusCode: map['statusCode']?.toInt() ?? 0,
      name: map['name'] ?? '',
      message: map['message'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Error.fromJson(String source) => Error.fromMap(json.decode(source));

  @override
  String toString() =>
      'Error(statusCode: $statusCode, name: $name, message: $message)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Error &&
        other.statusCode == statusCode &&
        other.name == name &&
        other.message == message;
  }

  @override
  int get hashCode => statusCode.hashCode ^ name.hashCode ^ message.hashCode;
}
