import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four/domain/model/user.dart';
import 'package:four/module/user/cubit/user_cubit.dart';
import 'package:four/use_case/user_use_case.dart';

part 'user_list_state.dart';

class UserListCubit extends Cubit<UserListState> {
  UserListCubit() : super(const UserListState.init());
  final UserUseCase _userUseCase = UserUseCase();

  Future<void> getData() async {
    emit(const UserListState.loading());
    await Future.delayed(const Duration(seconds: 1));
    var response = await _userUseCase.getUserListExecute();
    if (response.isError) {
      emit(UserListState.fail(response.message));
      return;
    }
    emit(UserListState.success(response.data));
  }
}
