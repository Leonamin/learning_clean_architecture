import 'package:learning_clean_architecture/example_application/core/data/dto/user/user_dto.dart';

class UserRemoteDataSource {
  const UserRemoteDataSource();

  Future<UserDTO> getUserDetails(String userId) async {
    // final url = Uri(
    //     host: Constants.baseUrl,
    //     scheme: "http",
    //     path: Constants.baseUrl + Constants.userDetails);

    // final Map<String, dynamic> params = {
    //   "user_id": userId,
    // };

    try {
      // final response = await get(url);
      // return UserDTO.fromJson(json.decode(utf8.decode(response.bodyBytes)));

      return UserDTO.fromJson({
        "id": 1,
        "email": "xxx@xxx.com",
        "first_name": "James",
        "last_name": "Oh",
        "occupation": "Doctor"
      });
    } catch (e) {
      rethrow;
    }
  }

  Future<List<UserDTO>> getUserList({required String companyId}) {
    // TODO: implement getUserList
    throw UnimplementedError();
  }
}
