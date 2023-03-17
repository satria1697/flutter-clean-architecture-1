import 'package:flutter_test/flutter_test.dart';
import 'package:four/constant/network/endpoint/user.dart';
import 'package:four/domain/service/api_service.dart';
import 'package:four/initiate_get_it.dart';
import 'package:four/repository/user_repository.dart';

void main() {
  ApiServiceInterface apiService = getIt<ApiServiceInterface>();

  var userRepository = UserRepository(apiService, UserEndpoint());
  test("user repository", () {
    userRepository.getData();
  });

  test("user repository", () {
    userRepository.getManyData();
  });
}
