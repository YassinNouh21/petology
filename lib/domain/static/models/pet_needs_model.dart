import 'dart:convert';

import 'package:petology/domain/core/static_model.dart';

class PetNeeds extends Static {
  final String imageUrl;

  PetNeeds({
    required this.imageUrl,
    required super.title,
  });

  PetNeeds copyWith({
    String? imageUrl,
    String? title,
  }) {
    return PetNeeds(
      imageUrl: imageUrl ?? this.imageUrl,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'imageUrl': imageUrl});
    result.addAll({'title': title});

    return result;
  }

  factory PetNeeds.fromMap(Map<String, dynamic> map) {
    return PetNeeds(
      imageUrl: map['imageUrl'] ?? '',
      title: map['title'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PetNeeds.fromJson(String source) =>
      PetNeeds.fromMap(json.decode(source));

  @override
  String toString() => 'PetNeeds(imageUrl: $imageUrl, title: $title)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PetNeeds &&
        other.imageUrl == imageUrl &&
        other.title == title;
  }

  @override
  int get hashCode => imageUrl.hashCode ^ title.hashCode;
}
