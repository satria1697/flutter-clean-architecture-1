import 'package:json_annotation/json_annotation.dart';

part 'generic_response.g.dart';

enum Code {
  SUCCESS,
  FAILED,
}

@JsonSerializable(
  genericArgumentFactories: true,
)
class GenericResponse<T> {
  const GenericResponse({
    this.data,
    required this.code,
    required this.message,
  });

  final T? data;
  final Code code;
  final String message;

  factory GenericResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? object) fromJsonT) =>
      _$GenericResponseFromJson(json, fromJsonT);
}
