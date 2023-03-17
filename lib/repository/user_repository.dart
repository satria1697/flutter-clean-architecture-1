import 'package:dio/dio.dart';
import 'package:four/domain/model/generic_response.dart';
import 'package:four/domain/model/mine_response.dart';
import 'package:four/domain/model/user.dart';
import 'package:four/domain/repository/user_repository.dart';

class UserRepository implements UserRepositoryInterface {
  @override
  Future<MineResponse<User?, DioError>> getData() async {
    Map<String, dynamic> json = {
      "data": {
        "id": "1",
        "name": "Oji",
      },
      "message": "success",
      "code": "SUCCESS",
    };
    GenericResponse<User?> response =
        GenericResponse<User?>.fromJson(json, (data) {
      if (data is Map<String, dynamic>) {
        return User.fromJson(data);
      }
      return null;
    });
    return MineResponse.success(response);
  }

  @override
  Future<MineResponse<List<User>, DioError?>> getManyData() async {
    Map<String, dynamic> json = {
      "data": [
        {
          "id": "1",
          "name": "Oji",
        },
        {
          "id": "2",
          "name": "Fahrul",
        }
      ],
      "message": "success",
      "code": "SUCCESS",
    };
    GenericResponse<List<User>> response =
        GenericResponse<List<User>>.fromJson(json, (data) {
      if (data is List<Map<String, dynamic>>) {
        return data.map((e) => User.fromJson(e)).toList();
      }
      return [];
    });

    return MineResponse.success(response);
  }
}
