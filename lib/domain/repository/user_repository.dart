import 'package:dio/dio.dart';
import 'package:four/domain/model/mine_response.dart';
import 'package:four/domain/model/user.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([MockSpec<UserRepositoryInterface>()])
abstract class UserRepositoryInterface {
  Future<MineResponse<User?, DioError?>> getData();

  Future<MineResponse<List<User>, DioError?>> getManyData();
}
