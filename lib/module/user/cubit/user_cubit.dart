import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four/domain/model/user.dart';
import 'package:four/domain/repository/user_repository.dart';
import 'package:four/initiate_get_it.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState.init());
  final UserRepositoryInterface _userRepository =
      getIt<UserRepositoryInterface>();

  Future<void> getData() async {
    emit(const UserState.loading());
    await Future.delayed(const Duration(seconds: 1));
    var response = await _userRepository.getData();
    var data = response.data;
    if (data is User) {
      emit(UserState.success(data));
    }
  }
}
