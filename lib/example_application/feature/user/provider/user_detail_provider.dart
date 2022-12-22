import 'package:flutter/widgets.dart';
import 'package:learning_clean_architecture/example_application/core/domain/entity/failure.dart';
import 'package:learning_clean_architecture/example_application/core/domain/usecase/get_user_detail_usecase.dart';

class UserDetailProvider extends ChangeNotifier {
  // late GetUserDetailsUseCase _useCase;
  GetUserDetailsUseCase _useCase = GetUserDetailsUseCase();

  String fullName = "";
  String occupation = "";
  int userId = 1;

  // UserDetailProvider({
  //   required GetUserDetailsUseCase useCase,
  // }) {
  //   _useCase = useCase;
  // }

  Future<void> init() async {
    getUserDetails(userId.toString());
  }

  Future<void> getUserDetails(String userId) async {
    final result = await _useCase.call(userId);

    result.fold((Failure failure) {
      debugPrint("Failed to fetch the data");
    }, (data) {
      fullName = data.fullName();
      occupation = data.occupation;
    });

    notifyListeners();
  }
}
