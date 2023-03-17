import 'package:four/domain/model/response.dart';
import 'package:four/domain/model/user.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([MockSpec<UserRepositoryInterface>()])
abstract class UserRepositoryInterface {
  Future<GenericResponse<User?>> getData();

  Future<GenericResponse<List<User>>> getManyData();
}
