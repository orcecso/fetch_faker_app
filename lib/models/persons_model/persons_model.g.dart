// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonsImpl _$$PersonsImplFromJson(Map<String, dynamic> json) =>
    _$PersonsImpl(
      id: json['id'] as int?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      birthday: json['birthday'] as String?,
      gender: json['gender'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      website: json['website'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$PersonsImplToJson(_$PersonsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'phone': instance.phone,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'address': instance.address,
      'website': instance.website,
      'image': instance.image,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      id: json['id'] as int?,
      street: json['street'] as String?,
      streetName: json['streetName'] as String?,
      buildingNumber: json['buildingNumber'] as String?,
      city: json['city'] as String?,
      zipcode: json['zipcode'] as String?,
      country: json['country'] as String?,
      countyCode: json['countyCode'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'street': instance.street,
      'streetName': instance.streetName,
      'buildingNumber': instance.buildingNumber,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'country': instance.country,
      'countyCode': instance.countyCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
