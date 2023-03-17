import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four/domain/model/user.dart';
import 'package:four/repository/user_repository.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState.init());
  final UserRepository _userRepository = UserRepository();

  Future<void> getData() async {
    emit(const UserState.loading());
    await Future.delayed(const Duration(seconds: 1));
    var response = await _userRepository.getUser();
    var data = response.data;
    if (data is User) {
      emit(UserState.success(data));
    }
  }
}
