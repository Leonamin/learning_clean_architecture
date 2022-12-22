import 'package:dartz/dartz.dart';
import 'package:learning_clean_architecture/example_application/core/domain/entity/failure.dart';
import 'package:learning_clean_architecture/example_application/core/domain/entity/user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getUserDetails({
    required String userId,
  });
}
