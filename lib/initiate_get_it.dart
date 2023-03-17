import 'package:four/domain/repository/user_repository.dart';
import 'package:four/repository/user_repository.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void initiateGetIt() {
  getIt.registerSingleton<UserRepositoryInterface>(UserRepository());
}
