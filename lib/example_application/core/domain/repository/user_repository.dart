import 'package:learning_clean_architecture/example_application/core/domain/entity/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> getUserDetails({
    required String userId,
  });
}
