import 'package:flutter/widgets.dart';
import 'package:learning_clean_architecture/example_application/core/domain/usecase/get_user_detail_usecase.dart';

class UserDetailProvider extends ChangeNotifier {
  late GetUserDetailsUseCase _useCase;

  String fullName = "";
  String occupation = "";
  int userId = 1;

  UserDetailProvider({
    required GetUserDetailsUseCase useCase,
  }) {
    _useCase = useCase;
  }

  Future<void> init() async {
    debugPrint("asdasd");
    getUserDetails(userId.toString());
  }

  Future<void> getUserDetails(String userId) async {
    final result = await _useCase.call(userId);

    // 실패 처리를 까먹었다.
    fullName = result.fullName();
    occupation = result.occupation;

    notifyListeners();
  }
}
