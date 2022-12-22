import 'package:flutter/material.dart';
import 'package:learning_clean_architecture/example_application/core/data/datasource/user_remote_datasource.dart';
import 'package:learning_clean_architecture/example_application/core/data/repository/user_repository_impl.dart';
import 'package:learning_clean_architecture/example_application/core/domain/usecase/get_user_detail_usecase.dart';
import 'package:learning_clean_architecture/example_application/feature/user/provider/user_detail_provider.dart';
import 'package:provider/provider.dart';

class UserDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Hello world!"),
                _buildUserInformationWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserInformationWidget() {
    return ChangeNotifierProvider(
      create: (context) {
        final provider = UserDetailProvider(
            useCase: GetUserDetailsUseCase(
                repository: UserRepositoryImpl(
                    userRemoteDataSource: UserRemoteDataSource())));
        provider.init();
        return provider;
      },
      child: Consumer<UserDetailProvider>(
        builder: (context, provider, child) {
          return Column(
            children: <Widget>[
              Text("My name is: ${provider.fullName}"),
              Text("My occupation is: ${provider.occupation}"),
            ],
          );
        },
      ),
    );
  }
}
