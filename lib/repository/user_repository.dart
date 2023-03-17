import 'package:dio/dio.dart';
import 'package:four/constant/network/endpoint/user.dart';
import 'package:four/domain/model/generic_response.dart';
import 'package:four/domain/model/mine_response.dart';
import 'package:four/domain/model/user.dart';
import 'package:four/domain/repository/user_repository.dart';
import 'package:four/domain/service/api_service.dart';

class UserRepository implements UserRepositoryInterface {
  const UserRepository(this.apiService, this.userEndpoint);

  final ApiServiceInterface apiService;
  final UserEndpoint userEndpoint;

  @override
  Future<MineResponse<User?, DioError>> getData() async {
    try {
      // How to use with API
      // EndpointInfo endpointInfo = userEndpoint.getUser("1");
      // var response = await apiService.invoke(
      //   endpointInfo.endpoint,
      //   method: endpointInfo.method,
      // );
      // GenericResponse<User?> genericResponse =
      // GenericResponse<User?>.fromJson(response.data, (data) {
      //   if (data is Map<String, dynamic>) {
      //     return User.fromJson(data);
      //   }
      //   return null;
      // });
      Map<String, dynamic> json = {
        "data": {
          "id": "1",
          "name": "Oji",
        },
        "message": "success",
        "code": "SUCCESS",
      };
      GenericResponse<User?> genericResponse =
          GenericResponse<User?>.fromJson(json, (data) {
        if (data is Map<String, dynamic>) {
          return User.fromJson(data);
        }
        return null;
      });
      return MineResponse.success(genericResponse);
    } on DioError catch (e) {
      return MineResponse.error(e);
    } catch (e) {
      return MineResponse.error(DioError(
        requestOptions: RequestOptions(),
        message: e.toString(),
      ));
    }
  }

  @override
  Future<MineResponse<List<User>, DioError?>> getManyData() async {
    try {
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
    } on DioError catch (e) {
      return MineResponse.error(e);
    } catch (e) {
      return MineResponse.error(DioError(
        requestOptions: RequestOptions(),
        message: e.toString(),
      ));
    }
  }
}
