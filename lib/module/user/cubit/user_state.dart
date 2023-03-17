part of 'user_cubit.dart';

enum DataState {
  init,
  loading,
  success,
  fail,
}

class UserState extends Equatable {
  const UserState._({
    this.dataState = DataState.init,
    this.data,
    this.errorMessage = "",
  });

  final DataState dataState;
  final User? data;
  final String errorMessage;

  const UserState.init() : this._();

  const UserState.success(User? data)
      : this._(
          data: data,
          dataState: DataState.success,
        );

  const UserState.fail(String errorMessage)
      : this._(
          errorMessage: errorMessage,
          dataState: DataState.fail,
        );

  const UserState.loading() : this._(dataState: DataState.loading);

  @override
  List<Object?> get props => [dataState, data];
}
