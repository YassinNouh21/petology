import 'dart:convert';

import 'package:petology/domain/core/static_model.dart';

class FirstSection extends Static {
  FirstSection({
    required super.title,
    required super.body,
  });

  FirstSection copyWith({
    String? title,
    String? body,
  }) {
    return FirstSection(
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

  factory FirstSection.fromMap(Map<String, dynamic> map) {
    return FirstSection(
      title: map['title'] ?? '',
      body: map['body'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FirstSection.fromJson(String source) =>
      FirstSection.fromMap(json.decode(source));

  @override
  String toString() => 'FirstSection(title: $title, body: $body)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FirstSection && other.title == title && other.body == body;
  }

  @override
  int get hashCode => title.hashCode ^ body.hashCode;
}
