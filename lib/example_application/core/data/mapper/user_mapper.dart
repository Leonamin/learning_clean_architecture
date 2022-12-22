import 'package:learning_clean_architecture/example_application/core/data/dto/user/user_dto.dart';
import 'package:learning_clean_architecture/example_application/core/data/mapper/mapper.dart';
import 'package:learning_clean_architecture/example_application/core/domain/entity/user_entity.dart';

class UserMapper extends Mapper<UserDTO, UserEntity> {
  @override
  UserEntity map(UserDTO object) {
    return UserEntity(
        id: object.id,
        email: object.email ?? "",
        firstName: object.firstName ?? "",
        lastName: object.lastName ?? "",
        occupation: object.occupation ?? "");
  }
}
