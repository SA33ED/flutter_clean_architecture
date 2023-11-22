import 'dart:convert';

import 'package:flutter_clean_architecture/core/databases/cache/cache_helper.dart';
import 'package:flutter_clean_architecture/core/errors/expentions.dart';
import 'package:flutter_clean_architecture/feature/user/data/models/user_model.dart';

class UserLocalDataSource {
  final CacheHelper cache;
  final String key = "CACHED_USER";
  UserLocalDataSource({required this.cache});
  Future<void>? cacheUser(UserModel? userToCahce) {
    if (userToCahce != null) {
      cache.saveData(key: key, value: json.encode(userToCahce.toJson()));
    } else {
      throw CacheExeption(errorMessage: "Cache Error");
    }
    return null;
  }

  Future<UserModel> getLastUser() {
    final jsonString = cache.getDataString(key: key);
    if (jsonString != null) {
      return Future.value(
        UserModel.fromJson(
          json.decode(jsonString),
        ),
      );
    } else {
      throw CacheExeption(errorMessage: "No Cached Data");
    }
  }
}
