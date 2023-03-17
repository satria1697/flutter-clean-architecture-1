import 'package:dio/dio.dart';
import 'package:four/constant/constant.dart';
import 'package:four/domain/model/generic_response.dart';
import 'package:four/domain/model/mine_response.dart';
import 'package:four/domain/model/response_status.dart';
import 'package:four/domain/model/user.dart';
import 'package:four/domain/repository/user_repository.dart';
import 'package:four/initiate_get_it.dart';

class UserUseCase {
  final UserRepositoryInterface _userRepository =
      getIt<UserRepositoryInterface>();

  Future<ResponseStatus<List<User>>> getUserListExecute() async {
    MineResponse<List<User>, DioError?> responseStatus =
        await _userRepository.getManyData();
    GenericResponse<List<User>>? data = responseStatus.data;
    DioError? error = responseStatus.error;
    if (data is GenericResponse<List<User>>) {
      return ResponseStatus<List<User>>(
        data: data.data ?? [],
        message: "",
      );
    }
    if (error is DioError) {
      var errorResponse = error.response?.data;
      if (errorResponse is GenericResponse) {
        return ResponseStatus(
          data: const [],
          message: errorResponse.message,
          isError: true,
        );
      }
      return ResponseStatus<List<User>>(
        message: responseStatus.error?.message ?? "",
        data: const [],
        isError: true,
      );
    }

    return const ResponseStatus(
      data: [],
      message: Constant.unknownError,
      isError: true,
    );
  }

  Future<ResponseStatus<User?>> getUserExecute() async {
    MineResponse<User?, DioError?> responseStatus =
        await _userRepository.getData();

    GenericResponse<User?>? data = responseStatus.data;
    DioError? error = responseStatus.error;
    if (data is GenericResponse<User?>) {
      return ResponseStatus<User?>(
        data: data.data,
        message: "",
      );
    }
    if (error is DioError) {
      var errorResponse = error.response?.data;
      if (errorResponse is GenericResponse) {
        return ResponseStatus(
          data: null,
          message: errorResponse.message,
          isError: true,
        );
      }
      return ResponseStatus<User?>(
        message: responseStatus.error?.message ?? "",
        data: null,
        isError: true,
      );
    }

    return const ResponseStatus(
      data: null,
      message: Constant.unknownError,
      isError: true,
    );
  }
}
