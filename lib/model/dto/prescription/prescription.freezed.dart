// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrescriptionDto _$PrescriptionDtoFromJson(Map<String, dynamic> json) {
  return _PrescriptionDto.fromJson(json);
}

/// @nodoc
mixin _$PrescriptionDto {
  String get id => throw _privateConstructorUsedError;
  String get medicalSymptomId => throw _privateConstructorUsedError;
  String get cageid => throw _privateConstructorUsedError;
  DateTime get prescribedDate => throw _privateConstructorUsedError;
  String? get cageType => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  int get quantityAnimal => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get daysToTake => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String get doctorApproval => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String get statusAnimal => throw _privateConstructorUsedError;
  MedicalSymptomDto? get medicalSymptom => throw _privateConstructorUsedError;
  CageDto? get cage => throw _privateConstructorUsedError;

  /// Serializes this PrescriptionDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrescriptionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrescriptionDtoCopyWith<PrescriptionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionDtoCopyWith<$Res> {
  factory $PrescriptionDtoCopyWith(
          PrescriptionDto value, $Res Function(PrescriptionDto) then) =
      _$PrescriptionDtoCopyWithImpl<$Res, PrescriptionDto>;
  @useResult
  $Res call(
      {String id,
      String medicalSymptomId,
      String cageid,
      DateTime prescribedDate,
      String? cageType,
      String notes,
      int quantityAnimal,
      String status,
      int daysToTake,
      double? price,
      String doctorApproval,
      DateTime? endDate,
      String statusAnimal,
      MedicalSymptomDto? medicalSymptom,
      CageDto? cage});

  $MedicalSymptomDtoCopyWith<$Res>? get medicalSymptom;
  $CageDtoCopyWith<$Res>? get cage;
}

/// @nodoc
class _$PrescriptionDtoCopyWithImpl<$Res, $Val extends PrescriptionDto>
    implements $PrescriptionDtoCopyWith<$Res> {
  _$PrescriptionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrescriptionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? medicalSymptomId = null,
    Object? cageid = null,
    Object? prescribedDate = null,
    Object? cageType = freezed,
    Object? notes = null,
    Object? quantityAnimal = null,
    Object? status = null,
    Object? daysToTake = null,
    Object? price = freezed,
    Object? doctorApproval = null,
    Object? endDate = freezed,
    Object? statusAnimal = null,
    Object? medicalSymptom = freezed,
    Object? cage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      medicalSymptomId: null == medicalSymptomId
          ? _value.medicalSymptomId
          : medicalSymptomId // ignore: cast_nullable_to_non_nullable
              as String,
      cageid: null == cageid
          ? _value.cageid
          : cageid // ignore: cast_nullable_to_non_nullable
              as String,
      prescribedDate: null == prescribedDate
          ? _value.prescribedDate
          : prescribedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cageType: freezed == cageType
          ? _value.cageType
          : cageType // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      quantityAnimal: null == quantityAnimal
          ? _value.quantityAnimal
          : quantityAnimal // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      daysToTake: null == daysToTake
          ? _value.daysToTake
          : daysToTake // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      doctorApproval: null == doctorApproval
          ? _value.doctorApproval
          : doctorApproval // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusAnimal: null == statusAnimal
          ? _value.statusAnimal
          : statusAnimal // ignore: cast_nullable_to_non_nullable
              as String,
      medicalSymptom: freezed == medicalSymptom
          ? _value.medicalSymptom
          : medicalSymptom // ignore: cast_nullable_to_non_nullable
              as MedicalSymptomDto?,
      cage: freezed == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as CageDto?,
    ) as $Val);
  }

  /// Create a copy of PrescriptionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicalSymptomDtoCopyWith<$Res>? get medicalSymptom {
    if (_value.medicalSymptom == null) {
      return null;
    }

    return $MedicalSymptomDtoCopyWith<$Res>(_value.medicalSymptom!, (value) {
      return _then(_value.copyWith(medicalSymptom: value) as $Val);
    });
  }

  /// Create a copy of PrescriptionDto
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
abstract class _$$PrescriptionDtoImplCopyWith<$Res>
    implements $PrescriptionDtoCopyWith<$Res> {
  factory _$$PrescriptionDtoImplCopyWith(_$PrescriptionDtoImpl value,
          $Res Function(_$PrescriptionDtoImpl) then) =
      __$$PrescriptionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String medicalSymptomId,
      String cageid,
      DateTime prescribedDate,
      String? cageType,
      String notes,
      int quantityAnimal,
      String status,
      int daysToTake,
      double? price,
      String doctorApproval,
      DateTime? endDate,
      String statusAnimal,
      MedicalSymptomDto? medicalSymptom,
      CageDto? cage});

  @override
  $MedicalSymptomDtoCopyWith<$Res>? get medicalSymptom;
  @override
  $CageDtoCopyWith<$Res>? get cage;
}

/// @nodoc
class __$$PrescriptionDtoImplCopyWithImpl<$Res>
    extends _$PrescriptionDtoCopyWithImpl<$Res, _$PrescriptionDtoImpl>
    implements _$$PrescriptionDtoImplCopyWith<$Res> {
  __$$PrescriptionDtoImplCopyWithImpl(
      _$PrescriptionDtoImpl _value, $Res Function(_$PrescriptionDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrescriptionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? medicalSymptomId = null,
    Object? cageid = null,
    Object? prescribedDate = null,
    Object? cageType = freezed,
    Object? notes = null,
    Object? quantityAnimal = null,
    Object? status = null,
    Object? daysToTake = null,
    Object? price = freezed,
    Object? doctorApproval = null,
    Object? endDate = freezed,
    Object? statusAnimal = null,
    Object? medicalSymptom = freezed,
    Object? cage = freezed,
  }) {
    return _then(_$PrescriptionDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      medicalSymptomId: null == medicalSymptomId
          ? _value.medicalSymptomId
          : medicalSymptomId // ignore: cast_nullable_to_non_nullable
              as String,
      cageid: null == cageid
          ? _value.cageid
          : cageid // ignore: cast_nullable_to_non_nullable
              as String,
      prescribedDate: null == prescribedDate
          ? _value.prescribedDate
          : prescribedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cageType: freezed == cageType
          ? _value.cageType
          : cageType // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      quantityAnimal: null == quantityAnimal
          ? _value.quantityAnimal
          : quantityAnimal // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      daysToTake: null == daysToTake
          ? _value.daysToTake
          : daysToTake // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      doctorApproval: null == doctorApproval
          ? _value.doctorApproval
          : doctorApproval // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusAnimal: null == statusAnimal
          ? _value.statusAnimal
          : statusAnimal // ignore: cast_nullable_to_non_nullable
              as String,
      medicalSymptom: freezed == medicalSymptom
          ? _value.medicalSymptom
          : medicalSymptom // ignore: cast_nullable_to_non_nullable
              as MedicalSymptomDto?,
      cage: freezed == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as CageDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrescriptionDtoImpl implements _PrescriptionDto {
  const _$PrescriptionDtoImpl(
      {required this.id,
      required this.medicalSymptomId,
      required this.cageid,
      required this.prescribedDate,
      required this.cageType,
      required this.notes,
      required this.quantityAnimal,
      required this.status,
      required this.daysToTake,
      required this.price,
      required this.doctorApproval,
      required this.endDate,
      required this.statusAnimal,
      required this.medicalSymptom,
      required this.cage});

  factory _$PrescriptionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrescriptionDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String medicalSymptomId;
  @override
  final String cageid;
  @override
  final DateTime prescribedDate;
  @override
  final String? cageType;
  @override
  final String notes;
  @override
  final int quantityAnimal;
  @override
  final String status;
  @override
  final int daysToTake;
  @override
  final double? price;
  @override
  final String doctorApproval;
  @override
  final DateTime? endDate;
  @override
  final String statusAnimal;
  @override
  final MedicalSymptomDto? medicalSymptom;
  @override
  final CageDto? cage;

  @override
  String toString() {
    return 'PrescriptionDto(id: $id, medicalSymptomId: $medicalSymptomId, cageid: $cageid, prescribedDate: $prescribedDate, cageType: $cageType, notes: $notes, quantityAnimal: $quantityAnimal, status: $status, daysToTake: $daysToTake, price: $price, doctorApproval: $doctorApproval, endDate: $endDate, statusAnimal: $statusAnimal, medicalSymptom: $medicalSymptom, cage: $cage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrescriptionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.medicalSymptomId, medicalSymptomId) ||
                other.medicalSymptomId == medicalSymptomId) &&
            (identical(other.cageid, cageid) || other.cageid == cageid) &&
            (identical(other.prescribedDate, prescribedDate) ||
                other.prescribedDate == prescribedDate) &&
            (identical(other.cageType, cageType) ||
                other.cageType == cageType) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.quantityAnimal, quantityAnimal) ||
                other.quantityAnimal == quantityAnimal) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.daysToTake, daysToTake) ||
                other.daysToTake == daysToTake) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.doctorApproval, doctorApproval) ||
                other.doctorApproval == doctorApproval) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.statusAnimal, statusAnimal) ||
                other.statusAnimal == statusAnimal) &&
            (identical(other.medicalSymptom, medicalSymptom) ||
                other.medicalSymptom == medicalSymptom) &&
            (identical(other.cage, cage) || other.cage == cage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      medicalSymptomId,
      cageid,
      prescribedDate,
      cageType,
      notes,
      quantityAnimal,
      status,
      daysToTake,
      price,
      doctorApproval,
      endDate,
      statusAnimal,
      medicalSymptom,
      cage);

  /// Create a copy of PrescriptionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrescriptionDtoImplCopyWith<_$PrescriptionDtoImpl> get copyWith =>
      __$$PrescriptionDtoImplCopyWithImpl<_$PrescriptionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrescriptionDtoImplToJson(
      this,
    );
  }
}

abstract class _PrescriptionDto implements PrescriptionDto {
  const factory _PrescriptionDto(
      {required final String id,
      required final String medicalSymptomId,
      required final String cageid,
      required final DateTime prescribedDate,
      required final String? cageType,
      required final String notes,
      required final int quantityAnimal,
      required final String status,
      required final int daysToTake,
      required final double? price,
      required final String doctorApproval,
      required final DateTime? endDate,
      required final String statusAnimal,
      required final MedicalSymptomDto? medicalSymptom,
      required final CageDto? cage}) = _$PrescriptionDtoImpl;

  factory _PrescriptionDto.fromJson(Map<String, dynamic> json) =
      _$PrescriptionDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get medicalSymptomId;
  @override
  String get cageid;
  @override
  DateTime get prescribedDate;
  @override
  String? get cageType;
  @override
  String get notes;
  @override
  int get quantityAnimal;
  @override
  String get status;
  @override
  int get daysToTake;
  @override
  double? get price;
  @override
  String get doctorApproval;
  @override
  DateTime? get endDate;
  @override
  String get statusAnimal;
  @override
  MedicalSymptomDto? get medicalSymptom;
  @override
  CageDto? get cage;

  /// Create a copy of PrescriptionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrescriptionDtoImplCopyWith<_$PrescriptionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
