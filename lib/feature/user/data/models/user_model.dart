import 'package:flutter_clean_architecture/feature/user/data/models/sub_models.dart';
import 'package:flutter_clean_architecture/feature/user/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  final int id;
  final String userName;
  final String webSite;
  final CompanyModel company;
  UserModel({
    required super.name,
    required super.email,
    required super.phone,
    required super.address,
    required this.id,
    required this.userName,
    required this.webSite,
    required this.company,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      address: AddressModel.fromJson(json['address']),
      company: CompanyModel.fromJson(json['company']),
      userName: json['username'],
      webSite: json['website'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'username': userName,
      'website': webSite,
      'company': company,
      'address': address,
    };
  }
}
