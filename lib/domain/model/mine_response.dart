import 'package:equatable/equatable.dart';
import 'package:four/domain/model/generic_response.dart';

class MineResponse<T, R> extends Equatable {
  const MineResponse._({
    this.data,
    this.error,
  });

  final GenericResponse<T>? data;
  final R? error;

  const MineResponse.success(GenericResponse<T> data) : this._(data: data);

  const MineResponse.error(R error) : this._(error: error);

  @override
  List<Object?> get props => [data, error];
}
