import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four/domain/model/user.dart';
import 'package:four/domain/repository/user_repository.dart';
import 'package:four/initiate_get_it.dart';
import 'package:four/module/user/cubit/user_cubit.dart';

part 'user_list_state.dart';

class UserListCubit extends Cubit<UserListState> {
  UserListCubit() : super(const UserListState.init());

  final UserRepositoryInterface _userRepository =
      getIt<UserRepositoryInterface>();

  Future<void> getData() async {
    emit(const UserListState.loading());
    await Future.delayed(const Duration(seconds: 1));
    var response = await _userRepository.getManyData();

    var data = response.data;
    if (data is List<User>) {
      emit(UserListState.success(data));
    }
  }
}
