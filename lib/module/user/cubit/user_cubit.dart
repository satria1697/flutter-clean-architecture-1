import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four/domain/model/user.dart';
import 'package:four/use_case/user_use_case.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState.init());

  final UserUseCase _userUseCase = UserUseCase();

  Future<void> getData() async {
    emit(const UserState.loading());
    await Future.delayed(const Duration(seconds: 1));
    var response = await _userUseCase.getUserExecute();

    if (response.isError) {
      emit(UserState.fail(response.message));
      return;
    }
    emit(UserState.success(response.data));
  }
}
