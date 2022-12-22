import 'package:learning_clean_architecture/example_application/core/domain/entity/user_entity.dart';
import 'package:learning_clean_architecture/example_application/core/domain/repository/user_repository.dart';

class GetUserDetailsUseCase {
  late UserRepository repository;

  GetUserDetailsUseCase({required UserRepository repository}) {
    repository = repository;
  }

  Future<UserEntity> call(String userId) {
    return repository.getUserDetails(userId: userId);
  }
}
