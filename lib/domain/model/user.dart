import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  const User({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
