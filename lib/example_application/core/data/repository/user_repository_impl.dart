import 'package:learning_clean_architecture/example_application/core/data/datasource/user_remote_datasource.dart';
import 'package:learning_clean_architecture/example_application/core/data/dto/user/user_dto.dart';
import 'package:learning_clean_architecture/example_application/core/data/mapper/user_mapper.dart';
import 'package:learning_clean_architecture/example_application/core/domain/entity/user_entity.dart';
import 'package:learning_clean_architecture/example_application/core/domain/repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  late UserRemoteDataSource _remoteDataSource;

  UserRepositoryImpl({
    required UserRemoteDataSource userRemoteDataSource,
  }) {
    _remoteDataSource = userRemoteDataSource;
  }

  @override
  Future<UserEntity> getUserDetails({
    required String userId,
  }) async {
    try {
      UserDTO userDto = await _remoteDataSource.getUserDetails(
        userId,
      );
      UserMapper mapper = UserMapper();
      UserEntity result = mapper.map(userDto);

      return result;
    } on Exception catch (e) {
      rethrow;
    }
  }
}
