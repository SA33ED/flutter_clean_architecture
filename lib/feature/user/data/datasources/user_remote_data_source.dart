import 'package:flutter_clean_architecture/core/databases/api/api_consumer.dart';
import 'package:flutter_clean_architecture/core/databases/api/end_points.dart';
import 'package:flutter_clean_architecture/core/params/params.dart';
import 'package:flutter_clean_architecture/feature/user/data/models/user_model.dart';

class UserRemoteDataSource {
  final ApiConsumer api;

  UserRemoteDataSource({required this.api});
  Future<UserModel> getUser(UserParams params) async {
    final resposne = await api.get(
      "${EndPoints.user}/${params.id}",
    );
    return UserModel.fromJson(resposne);
  }
}
