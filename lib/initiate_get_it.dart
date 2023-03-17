import 'package:four/constant/network/endpoint/user.dart';
import 'package:four/domain/repository/user_repository.dart';
import 'package:four/domain/service/api_service.dart';
import 'package:four/repository/user_repository.dart';
import 'package:four/service/api_service.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void initiateGetIt() {
  getIt.registerSingleton<ApiServiceInterface>(ApiService());
  getIt.registerSingleton<UserRepositoryInterface>(UserRepository(
    getIt(),
    UserEndpoint(),
  ));
}
