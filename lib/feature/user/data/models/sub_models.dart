import 'package:flutter_clean_architecture/feature/user/domain/entities/sub_entites.dart';

class CompanyModel {
  final String name;
  final String catchPhrase;
  final String bs;

  CompanyModel({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      name: json['name'],
      catchPhrase: json['catchPhrase'],
      bs: json['bs'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'catchPhrase': catchPhrase,
      'bs': bs,
    };
  }
}

class AddressModel extends AddressEntitiy {
  AddressModel({
    required super.street,
    required super.suite,
    required super.city,
    required super.zipcode,
    required super.geo,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      street: json['street'],
      suite: json['suite'],
      city: json['city'],
      zipcode: json['zipcode'],
      geo: GeoModel.fromJson(json['geo']),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'street': street,
      'suite': suite,
      'city': city,
      'zipcode': zipcode,
      'geo': geo,
    };
  }
}

class GeoModel extends GeoEntitiy {
  GeoModel({
    required super.lat,
    required super.lng,
  });
  factory GeoModel.fromJson(Map<String, dynamic> json) {
    return GeoModel(
      lat: json['lat'],
      lng: json['lng'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lng': lng,
    };
  }
}
