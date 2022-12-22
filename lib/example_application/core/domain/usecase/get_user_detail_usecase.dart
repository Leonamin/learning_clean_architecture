import 'package:dartz/dartz.dart';
import 'package:learning_clean_architecture/example_application/core/data/repository/user_repository_impl.dart';
import 'package:learning_clean_architecture/example_application/core/domain/entity/failure.dart';
import 'package:learning_clean_architecture/example_application/core/domain/entity/user_entity.dart';
import 'package:learning_clean_architecture/example_application/core/domain/repository/user_repository.dart';

class GetUserDetailsUseCase {
  // late UserRepository repository;
  UserRepository repository = UserRepositoryImpl();

  // GetUserDetailsUseCase({required UserRepository userRepository}) {
  //   repository = userRepository;
  // }

  Future<Either<Failure, UserEntity>> call(String userId) {
    return repository.getUserDetails(userId: userId);
  }
}
