import 'package:flutter_clean_architecture/feature/user/domain/entities/sub_entites.dart';

class UserEntity {
  final String name;
  final String email;
  final String phone;
  final AddressEntitiy address;

  UserEntity({
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
  });
}
