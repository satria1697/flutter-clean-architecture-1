import 'package:dio/dio.dart';
import 'package:four/constant/constant.dart';
import 'package:four/domain/model/clean_response.dart';
import 'package:four/domain/model/generic_response.dart';
import 'package:four/domain/model/mine_response.dart';
import 'package:four/domain/model/user.dart';
import 'package:four/domain/repository/user_repository.dart';
import 'package:four/initiate_get_it.dart';

class UserUseCase {
  final UserRepositoryInterface _userRepository =
      getIt<UserRepositoryInterface>();

  Future<CleanResponse<List<User>>> getUserListExecute() async {
    MineResponse<List<User>, DioError?> responseStatus =
        await _userRepository.getManyData();
    GenericResponse<List<User>>? data = responseStatus.data;
    DioError? error = responseStatus.error;
    if (data is GenericResponse<List<User>>) {
      return CleanResponse<List<User>>(
        data: data.data ?? [],
        message: "",
      );
    }
    if (error is DioError) {
      var errorResponse = error.response?.data;
      if (errorResponse is GenericResponse) {
        return CleanResponse(
          data: const [],
          message: errorResponse.message,
          isError: true,
        );
      }
      return CleanResponse<List<User>>(
        message: responseStatus.error?.message ?? "",
        data: const [],
        isError: true,
      );
    }

    return const CleanResponse(
      data: [],
      message: Constant.unknownError,
      isError: true,
    );
  }

  Future<CleanResponse<User?>> getUserExecute() async {
    MineResponse<User?, DioError?> responseStatus =
        await _userRepository.getData();

    GenericResponse<User?>? data = responseStatus.data;
    DioError? error = responseStatus.error;
    if (data is GenericResponse<User?>) {
      return CleanResponse<User?>(
        data: data.data,
        message: "",
      );
    }
    if (error is DioError) {
      var errorResponse = error.response?.data;
      if (errorResponse is GenericResponse) {
        return CleanResponse(
          data: null,
          message: errorResponse.message,
          isError: true,
        );
      }
      return CleanResponse<User?>(
        message: responseStatus.error?.message ?? "",
        data: null,
        isError: true,
      );
    }

    return const CleanResponse(
      data: null,
      message: Constant.unknownError,
      isError: true,
    );
  }
}
