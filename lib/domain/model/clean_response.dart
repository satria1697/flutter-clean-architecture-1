import 'package:equatable/equatable.dart';

class CleanResponse<T> extends Equatable {
  final T data;
  final String message;
  final bool isError;

  const CleanResponse({
    required this.data,
    required this.message,
    this.isError = false,
  });

  @override
  List<Object?> get props => [
        data,
        message,
        isError,
      ];
}
