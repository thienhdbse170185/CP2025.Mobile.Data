// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farming_batch_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FarmingBatchDto _$FarmingBatchDtoFromJson(Map<String, dynamic> json) {
  return _FarmingBatchDto.fromJson(json);
}

/// @nodoc
mixin _$FarmingBatchDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get completeAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get cleaningFrequency => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  CageDto? get cage => throw _privateConstructorUsedError;

  /// Serializes this FarmingBatchDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FarmingBatchDtoCopyWith<FarmingBatchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmingBatchDtoCopyWith<$Res> {
  factory $FarmingBatchDtoCopyWith(
          FarmingBatchDto value, $Res Function(FarmingBatchDto) then) =
      _$FarmingBatchDtoCopyWithImpl<$Res, FarmingBatchDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      String species,
      DateTime startDate,
      DateTime? completeAt,
      String status,
      int cleaningFrequency,
      int quantity,
      CageDto? cage});

  $CageDtoCopyWith<$Res>? get cage;
}

/// @nodoc
class _$FarmingBatchDtoCopyWithImpl<$Res, $Val extends FarmingBatchDto>
    implements $FarmingBatchDtoCopyWith<$Res> {
  _$FarmingBatchDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? species = null,
    Object? startDate = null,
    Object? completeAt = freezed,
    Object? status = null,
    Object? cleaningFrequency = null,
    Object? quantity = null,
    Object? cage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completeAt: freezed == completeAt
          ? _value.completeAt
          : completeAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      cleaningFrequency: null == cleaningFrequency
          ? _value.cleaningFrequency
          : cleaningFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      cage: freezed == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as CageDto?,
    ) as $Val);
  }

  /// Create a copy of FarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CageDtoCopyWith<$Res>? get cage {
    if (_value.cage == null) {
      return null;
    }

    return $CageDtoCopyWith<$Res>(_value.cage!, (value) {
      return _then(_value.copyWith(cage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FarmingBatchDtoImplCopyWith<$Res>
    implements $FarmingBatchDtoCopyWith<$Res> {
  factory _$$FarmingBatchDtoImplCopyWith(_$FarmingBatchDtoImpl value,
          $Res Function(_$FarmingBatchDtoImpl) then) =
      __$$FarmingBatchDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String species,
      DateTime startDate,
      DateTime? completeAt,
      String status,
      int cleaningFrequency,
      int quantity,
      CageDto? cage});

  @override
  $CageDtoCopyWith<$Res>? get cage;
}

/// @nodoc
class __$$FarmingBatchDtoImplCopyWithImpl<$Res>
    extends _$FarmingBatchDtoCopyWithImpl<$Res, _$FarmingBatchDtoImpl>
    implements _$$FarmingBatchDtoImplCopyWith<$Res> {
  __$$FarmingBatchDtoImplCopyWithImpl(
      _$FarmingBatchDtoImpl _value, $Res Function(_$FarmingBatchDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? species = null,
    Object? startDate = null,
    Object? completeAt = freezed,
    Object? status = null,
    Object? cleaningFrequency = null,
    Object? quantity = null,
    Object? cage = freezed,
  }) {
    return _then(_$FarmingBatchDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completeAt: freezed == completeAt
          ? _value.completeAt
          : completeAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      cleaningFrequency: null == cleaningFrequency
          ? _value.cleaningFrequency
          : cleaningFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      cage: freezed == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as CageDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FarmingBatchDtoImpl implements _FarmingBatchDto {
  const _$FarmingBatchDtoImpl(
      {required this.id,
      required this.name,
      required this.species,
      required this.startDate,
      required this.completeAt,
      required this.status,
      required this.cleaningFrequency,
      required this.quantity,
      required this.cage});

  factory _$FarmingBatchDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FarmingBatchDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String species;
  @override
  final DateTime startDate;
  @override
  final DateTime? completeAt;
  @override
  final String status;
  @override
  final int cleaningFrequency;
  @override
  final int quantity;
  @override
  final CageDto? cage;

  @override
  String toString() {
    return 'FarmingBatchDto(id: $id, name: $name, species: $species, startDate: $startDate, completeAt: $completeAt, status: $status, cleaningFrequency: $cleaningFrequency, quantity: $quantity, cage: $cage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmingBatchDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.completeAt, completeAt) ||
                other.completeAt == completeAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cleaningFrequency, cleaningFrequency) ||
                other.cleaningFrequency == cleaningFrequency) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.cage, cage) || other.cage == cage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, species, startDate,
      completeAt, status, cleaningFrequency, quantity, cage);

  /// Create a copy of FarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmingBatchDtoImplCopyWith<_$FarmingBatchDtoImpl> get copyWith =>
      __$$FarmingBatchDtoImplCopyWithImpl<_$FarmingBatchDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmingBatchDtoImplToJson(
      this,
    );
  }
}

abstract class _FarmingBatchDto implements FarmingBatchDto {
  const factory _FarmingBatchDto(
      {required final String id,
      required final String name,
      required final String species,
      required final DateTime startDate,
      required final DateTime? completeAt,
      required final String status,
      required final int cleaningFrequency,
      required final int quantity,
      required final CageDto? cage}) = _$FarmingBatchDtoImpl;

  factory _FarmingBatchDto.fromJson(Map<String, dynamic> json) =
      _$FarmingBatchDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get species;
  @override
  DateTime get startDate;
  @override
  DateTime? get completeAt;
  @override
  String get status;
  @override
  int get cleaningFrequency;
  @override
  int get quantity;
  @override
  CageDto? get cage;

  /// Create a copy of FarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FarmingBatchDtoImplCopyWith<_$FarmingBatchDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
