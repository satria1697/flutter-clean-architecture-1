import 'package:equatable/equatable.dart';

class ResponseStatus<T> extends Equatable {
  final T data;
  final String message;
  final bool isError;

  const ResponseStatus({
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
