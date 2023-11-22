class AddressEntitiy {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final GeoEntitiy geo;
  AddressEntitiy({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });
}

class GeoEntitiy {
  final String lat;
  final String lng;

  GeoEntitiy({
    required this.lat,
    required this.lng,
  });
}


