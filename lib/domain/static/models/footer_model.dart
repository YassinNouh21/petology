import 'dart:convert';

import 'package:petology/domain/core/static_model.dart';

class Footer extends Static {
  final String email;
  final String location;
  final String phone;
  final String location2;
  Footer({
    required this.email,
    required this.location,
    required this.phone,
    required this.location2,
  });

  Footer copyWith({
    String? email,
    String? location,
    String? phone,
    String? location2,
  }) {
    return Footer(
      email: email ?? this.email,
      location: location ?? this.location,
      phone: phone ?? this.phone,
      location2: location2 ?? this.location2,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'email': email});
    result.addAll({'location': location});
    result.addAll({'phone': phone});
    result.addAll({'location2': location2});

    return result;
  }

  factory Footer.fromMap(Map<String, dynamic> map) {
    return Footer(
      email: map['email'] ?? '',
      location: map['location'] ?? '',
      phone: map['phone'] ?? '',
      location2: map['location2'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Footer.fromJson(String source) => Footer.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Footer(email: $email, location: $location, phone: $phone, location2: $location2)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Footer &&
        other.email == email &&
        other.location == location &&
        other.phone == phone &&
        other.location2 == location2;
  }

  @override
  int get hashCode {
    return email.hashCode ^
        location.hashCode ^
        phone.hashCode ^
        location2.hashCode;
  }
}
