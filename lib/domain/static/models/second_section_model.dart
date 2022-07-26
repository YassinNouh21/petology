import 'dart:convert';

import 'package:petology/domain/core/static_model.dart';

class SecondSection extends Static {
  SecondSection({
    required super.title,
    required super.body,
  });

  SecondSection copyWith({
    String? title,
    String? body,
  }) {
    return SecondSection(
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'title': title});
    result.addAll({'body': body});

    return result;
  }

  factory SecondSection.fromMap(Map<String, dynamic> map) {
    return SecondSection(
      title: map['title'] ?? '',
      body: map['body'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SecondSection.fromJson(String source) =>
      SecondSection.fromMap(json.decode(source));

  @override
  String toString() => 'SecondSection(title: $title, body: $body)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SecondSection && other.title == title && other.body == body;
  }

  @override
  int get hashCode => title.hashCode ^ body.hashCode;
}
