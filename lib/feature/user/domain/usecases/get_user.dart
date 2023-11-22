import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/errors/failure.dart';
import 'package:flutter_clean_architecture/core/params/params.dart';
import 'package:flutter_clean_architecture/feature/user/domain/entities/user_entity.dart';
import 'package:flutter_clean_architecture/feature/user/domain/repositories/user_repository.dart';

class GetUser {
  final UserRepository repository;

  GetUser({required this.repository});

  Future<Either<Failure, UserEntity>> call({required UserParams params}) {
    return repository.getUser(params: params);
  }
}
