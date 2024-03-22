// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persons_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Persons _$PersonsFromJson(Map<String, dynamic> json) {
  return _Persons.fromJson(json);
}

/// @nodoc
mixin _$Persons {
  int? get id => throw _privateConstructorUsedError;
  String? get firstname => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonsCopyWith<Persons> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonsCopyWith<$Res> {
  factory $PersonsCopyWith(Persons value, $Res Function(Persons) then) =
      _$PersonsCopyWithImpl<$Res, Persons>;
  @useResult
  $Res call(
      {int? id,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? birthday,
      String? gender,
      Address? address,
      String? website,
      String? image});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$PersonsCopyWithImpl<$Res, $Val extends Persons>
    implements $PersonsCopyWith<$Res> {
  _$PersonsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? address = freezed,
    Object? website = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PersonsImplCopyWith<$Res> implements $PersonsCopyWith<$Res> {
  factory _$$PersonsImplCopyWith(
          _$PersonsImpl value, $Res Function(_$PersonsImpl) then) =
      __$$PersonsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? birthday,
      String? gender,
      Address? address,
      String? website,
      String? image});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$PersonsImplCopyWithImpl<$Res>
    extends _$PersonsCopyWithImpl<$Res, _$PersonsImpl>
    implements _$$PersonsImplCopyWith<$Res> {
  __$$PersonsImplCopyWithImpl(
      _$PersonsImpl _value, $Res Function(_$PersonsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? address = freezed,
    Object? website = freezed,
    Object? image = freezed,
  }) {
    return _then(_$PersonsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonsImpl implements _Persons {
  const _$PersonsImpl(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.email,
      required this.phone,
      required this.birthday,
      required this.gender,
      required this.address,
      required this.website,
      required this.image});

  factory _$PersonsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? birthday;
  @override
  final String? gender;
  @override
  final Address? address;
  @override
  final String? website;
  @override
  final String? image;

  @override
  String toString() {
    return 'Persons(id: $id, firstname: $firstname, lastname: $lastname, email: $email, phone: $phone, birthday: $birthday, gender: $gender, address: $address, website: $website, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstname, lastname, email,
      phone, birthday, gender, address, website, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonsImplCopyWith<_$PersonsImpl> get copyWith =>
      __$$PersonsImplCopyWithImpl<_$PersonsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonsImplToJson(
      this,
    );
  }
}

abstract class _Persons implements Persons {
  const factory _Persons(
      {required final int? id,
      required final String? firstname,
      required final String? lastname,
      required final String? email,
      required final String? phone,
      required final String? birthday,
      required final String? gender,
      required final Address? address,
      required final String? website,
      required final String? image}) = _$PersonsImpl;

  factory _Persons.fromJson(Map<String, dynamic> json) = _$PersonsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get firstname;
  @override
  String? get lastname;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get birthday;
  @override
  String? get gender;
  @override
  Address? get address;
  @override
  String? get website;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$PersonsImplCopyWith<_$PersonsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  int? get id => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get streetName => throw _privateConstructorUsedError;
  String? get buildingNumber => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get zipcode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get countyCode => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {int? id,
      String? street,
      String? streetName,
      String? buildingNumber,
      String? city,
      String? zipcode,
      String? country,
      String? countyCode,
      double? latitude,
      double? longitude});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? street = freezed,
    Object? streetName = freezed,
    Object? buildingNumber = freezed,
    Object? city = freezed,
    Object? zipcode = freezed,
    Object? country = freezed,
    Object? countyCode = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingNumber: freezed == buildingNumber
          ? _value.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: freezed == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      countyCode: freezed == countyCode
          ? _value.countyCode
          : countyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? street,
      String? streetName,
      String? buildingNumber,
      String? city,
      String? zipcode,
      String? country,
      String? countyCode,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? street = freezed,
    Object? streetName = freezed,
    Object? buildingNumber = freezed,
    Object? city = freezed,
    Object? zipcode = freezed,
    Object? country = freezed,
    Object? countyCode = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$AddressImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingNumber: freezed == buildingNumber
          ? _value.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: freezed == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      countyCode: freezed == countyCode
          ? _value.countyCode
          : countyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {required this.id,
      required this.street,
      required this.streetName,
      required this.buildingNumber,
      required this.city,
      required this.zipcode,
      required this.country,
      required this.countyCode,
      required this.latitude,
      required this.longitude});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final int? id;
  @override
  final String? street;
  @override
  final String? streetName;
  @override
  final String? buildingNumber;
  @override
  final String? city;
  @override
  final String? zipcode;
  @override
  final String? country;
  @override
  final String? countyCode;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'Address(id: $id, street: $street, streetName: $streetName, buildingNumber: $buildingNumber, city: $city, zipcode: $zipcode, country: $country, countyCode: $countyCode, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.streetName, streetName) ||
                other.streetName == streetName) &&
            (identical(other.buildingNumber, buildingNumber) ||
                other.buildingNumber == buildingNumber) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.countyCode, countyCode) ||
                other.countyCode == countyCode) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, street, streetName,
      buildingNumber, city, zipcode, country, countyCode, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {required final int? id,
      required final String? street,
      required final String? streetName,
      required final String? buildingNumber,
      required final String? city,
      required final String? zipcode,
      required final String? country,
      required final String? countyCode,
      required final double? latitude,
      required final double? longitude}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  int? get id;
  @override
  String? get street;
  @override
  String? get streetName;
  @override
  String? get buildingNumber;
  @override
  String? get city;
  @override
  String? get zipcode;
  @override
  String? get country;
  @override
  String? get countyCode;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
