import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/errors/failure.dart';
import 'package:flutter_clean_architecture/core/params/params.dart';
import 'package:flutter_clean_architecture/feature/user/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getUser({required UserParams params});
}
