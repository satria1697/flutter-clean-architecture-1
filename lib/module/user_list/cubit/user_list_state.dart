part of 'user_list_cubit.dart';

class UserListState extends Equatable {
  const UserListState._({
    this.dataState = DataState.init,
    this.data = const [],
  });

  final DataState dataState;
  final List<User> data;

  const UserListState.init() : this._();

  const UserListState.loading() : this._(dataState: DataState.loading);

  const UserListState.success(List<User> data)
      : this._(
          dataState: DataState.success,
          data: data,
        );

  @override
  List<Object?> get props => [dataState, data];
}
