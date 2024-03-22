import 'package:freezed_annotation/freezed_annotation.dart';

part 'persons_model.freezed.dart';
part 'persons_model.g.dart';

@freezed
class Persons with _$Persons {
  const factory Persons({
    required int? id,
    required String? firstname,
    required String? lastname,
    required String? email,
    required String? phone,
    required String? birthday,
    required String? gender,
    required Address? address,
    required String? website,
    required String? image,
  }) = _Persons;

  factory Persons.fromJson(Map<String, dynamic> json) =>
      _$PersonsFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    required int? id,
    required String? street,
    required String? streetName,
    required String? buildingNumber,
    required String? city,
    required String? zipcode,
    required String? country,
    required String? countyCode,
    required double? latitude,
    required double? longitude,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
