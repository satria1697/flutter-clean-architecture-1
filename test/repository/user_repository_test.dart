import 'package:flutter_test/flutter_test.dart';
import 'package:four/repository/user_repository.dart';

void main() {
  var userRepository = UserRepository();
  test("user repository", () {
    userRepository.getData();
  });

  test("user repository", () {
    userRepository.getManyData();
  });
}
