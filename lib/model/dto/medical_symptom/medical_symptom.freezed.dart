// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_symptom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MedicalSymptomDto _$MedicalSymptomDtoFromJson(Map<String, dynamic> json) {
  return _MedicalSymptomDto.fromJson(json);
}

/// @nodoc
mixin _$MedicalSymptomDto {
  String get id => throw _privateConstructorUsedError;
  String get farmingBatchId => throw _privateConstructorUsedError;
  String? get symtoms => throw _privateConstructorUsedError;
  String? get diagnosis => throw _privateConstructorUsedError;
  DateTime get createAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get affectedQuantity => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get nameAnimal => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  List<PictureSymptom>? get pictures => throw _privateConstructorUsedError;
  List<SymptomDto>? get medicalSymptomDetails =>
      throw _privateConstructorUsedError;
  List<PrescriptionDto>? get prescriptions =>
      throw _privateConstructorUsedError;

  /// Serializes this MedicalSymptomDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicalSymptomDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicalSymptomDtoCopyWith<MedicalSymptomDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalSymptomDtoCopyWith<$Res> {
  factory $MedicalSymptomDtoCopyWith(
          MedicalSymptomDto value, $Res Function(MedicalSymptomDto) then) =
      _$MedicalSymptomDtoCopyWithImpl<$Res, MedicalSymptomDto>;
  @useResult
  $Res call(
      {String id,
      String farmingBatchId,
      String? symtoms,
      String? diagnosis,
      DateTime createAt,
      String status,
      int affectedQuantity,
      int? quantity,
      String? nameAnimal,
      String notes,
      List<PictureSymptom>? pictures,
      List<SymptomDto>? medicalSymptomDetails,
      List<PrescriptionDto>? prescriptions});
}

/// @nodoc
class _$MedicalSymptomDtoCopyWithImpl<$Res, $Val extends MedicalSymptomDto>
    implements $MedicalSymptomDtoCopyWith<$Res> {
  _$MedicalSymptomDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicalSymptomDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? farmingBatchId = null,
    Object? symtoms = freezed,
    Object? diagnosis = freezed,
    Object? createAt = null,
    Object? status = null,
    Object? affectedQuantity = null,
    Object? quantity = freezed,
    Object? nameAnimal = freezed,
    Object? notes = null,
    Object? pictures = freezed,
    Object? medicalSymptomDetails = freezed,
    Object? prescriptions = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      farmingBatchId: null == farmingBatchId
          ? _value.farmingBatchId
          : farmingBatchId // ignore: cast_nullable_to_non_nullable
              as String,
      symtoms: freezed == symtoms
          ? _value.symtoms
          : symtoms // ignore: cast_nullable_to_non_nullable
              as String?,
      diagnosis: freezed == diagnosis
          ? _value.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      affectedQuantity: null == affectedQuantity
          ? _value.affectedQuantity
          : affectedQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      nameAnimal: freezed == nameAnimal
          ? _value.nameAnimal
          : nameAnimal // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<PictureSymptom>?,
      medicalSymptomDetails: freezed == medicalSymptomDetails
          ? _value.medicalSymptomDetails
          : medicalSymptomDetails // ignore: cast_nullable_to_non_nullable
              as List<SymptomDto>?,
      prescriptions: freezed == prescriptions
          ? _value.prescriptions
          : prescriptions // ignore: cast_nullable_to_non_nullable
              as List<PrescriptionDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicalSymptomDtoImplCopyWith<$Res>
    implements $MedicalSymptomDtoCopyWith<$Res> {
  factory _$$MedicalSymptomDtoImplCopyWith(_$MedicalSymptomDtoImpl value,
          $Res Function(_$MedicalSymptomDtoImpl) then) =
      __$$MedicalSymptomDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String farmingBatchId,
      String? symtoms,
      String? diagnosis,
      DateTime createAt,
      String status,
      int affectedQuantity,
      int? quantity,
      String? nameAnimal,
      String notes,
      List<PictureSymptom>? pictures,
      List<SymptomDto>? medicalSymptomDetails,
      List<PrescriptionDto>? prescriptions});
}

/// @nodoc
class __$$MedicalSymptomDtoImplCopyWithImpl<$Res>
    extends _$MedicalSymptomDtoCopyWithImpl<$Res, _$MedicalSymptomDtoImpl>
    implements _$$MedicalSymptomDtoImplCopyWith<$Res> {
  __$$MedicalSymptomDtoImplCopyWithImpl(_$MedicalSymptomDtoImpl _value,
      $Res Function(_$MedicalSymptomDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicalSymptomDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? farmingBatchId = null,
    Object? symtoms = freezed,
    Object? diagnosis = freezed,
    Object? createAt = null,
    Object? status = null,
    Object? affectedQuantity = null,
    Object? quantity = freezed,
    Object? nameAnimal = freezed,
    Object? notes = null,
    Object? pictures = freezed,
    Object? medicalSymptomDetails = freezed,
    Object? prescriptions = freezed,
  }) {
    return _then(_$MedicalSymptomDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      farmingBatchId: null == farmingBatchId
          ? _value.farmingBatchId
          : farmingBatchId // ignore: cast_nullable_to_non_nullable
              as String,
      symtoms: freezed == symtoms
          ? _value.symtoms
          : symtoms // ignore: cast_nullable_to_non_nullable
              as String?,
      diagnosis: freezed == diagnosis
          ? _value.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      affectedQuantity: null == affectedQuantity
          ? _value.affectedQuantity
          : affectedQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      nameAnimal: freezed == nameAnimal
          ? _value.nameAnimal
          : nameAnimal // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      pictures: freezed == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<PictureSymptom>?,
      medicalSymptomDetails: freezed == medicalSymptomDetails
          ? _value._medicalSymptomDetails
          : medicalSymptomDetails // ignore: cast_nullable_to_non_nullable
              as List<SymptomDto>?,
      prescriptions: freezed == prescriptions
          ? _value._prescriptions
          : prescriptions // ignore: cast_nullable_to_non_nullable
              as List<PrescriptionDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicalSymptomDtoImpl implements _MedicalSymptomDto {
  const _$MedicalSymptomDtoImpl(
      {required this.id,
      required this.farmingBatchId,
      required this.symtoms,
      required this.diagnosis,
      required this.createAt,
      required this.status,
      required this.affectedQuantity,
      required this.quantity,
      required this.nameAnimal,
      required this.notes,
      required final List<PictureSymptom>? pictures,
      required final List<SymptomDto>? medicalSymptomDetails,
      required final List<PrescriptionDto>? prescriptions})
      : _pictures = pictures,
        _medicalSymptomDetails = medicalSymptomDetails,
        _prescriptions = prescriptions;

  factory _$MedicalSymptomDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicalSymptomDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String farmingBatchId;
  @override
  final String? symtoms;
  @override
  final String? diagnosis;
  @override
  final DateTime createAt;
  @override
  final String status;
  @override
  final int affectedQuantity;
  @override
  final int? quantity;
  @override
  final String? nameAnimal;
  @override
  final String notes;
  final List<PictureSymptom>? _pictures;
  @override
  List<PictureSymptom>? get pictures {
    final value = _pictures;
    if (value == null) return null;
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SymptomDto>? _medicalSymptomDetails;
  @override
  List<SymptomDto>? get medicalSymptomDetails {
    final value = _medicalSymptomDetails;
    if (value == null) return null;
    if (_medicalSymptomDetails is EqualUnmodifiableListView)
      return _medicalSymptomDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PrescriptionDto>? _prescriptions;
  @override
  List<PrescriptionDto>? get prescriptions {
    final value = _prescriptions;
    if (value == null) return null;
    if (_prescriptions is EqualUnmodifiableListView) return _prescriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MedicalSymptomDto(id: $id, farmingBatchId: $farmingBatchId, symtoms: $symtoms, diagnosis: $diagnosis, createAt: $createAt, status: $status, affectedQuantity: $affectedQuantity, quantity: $quantity, nameAnimal: $nameAnimal, notes: $notes, pictures: $pictures, medicalSymptomDetails: $medicalSymptomDetails, prescriptions: $prescriptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicalSymptomDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.farmingBatchId, farmingBatchId) ||
                other.farmingBatchId == farmingBatchId) &&
            (identical(other.symtoms, symtoms) || other.symtoms == symtoms) &&
            (identical(other.diagnosis, diagnosis) ||
                other.diagnosis == diagnosis) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.affectedQuantity, affectedQuantity) ||
                other.affectedQuantity == affectedQuantity) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.nameAnimal, nameAnimal) ||
                other.nameAnimal == nameAnimal) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._pictures, _pictures) &&
            const DeepCollectionEquality()
                .equals(other._medicalSymptomDetails, _medicalSymptomDetails) &&
            const DeepCollectionEquality()
                .equals(other._prescriptions, _prescriptions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      farmingBatchId,
      symtoms,
      diagnosis,
      createAt,
      status,
      affectedQuantity,
      quantity,
      nameAnimal,
      notes,
      const DeepCollectionEquality().hash(_pictures),
      const DeepCollectionEquality().hash(_medicalSymptomDetails),
      const DeepCollectionEquality().hash(_prescriptions));

  /// Create a copy of MedicalSymptomDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicalSymptomDtoImplCopyWith<_$MedicalSymptomDtoImpl> get copyWith =>
      __$$MedicalSymptomDtoImplCopyWithImpl<_$MedicalSymptomDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicalSymptomDtoImplToJson(
      this,
    );
  }
}

abstract class _MedicalSymptomDto implements MedicalSymptomDto {
  const factory _MedicalSymptomDto(
          {required final String id,
          required final String farmingBatchId,
          required final String? symtoms,
          required final String? diagnosis,
          required final DateTime createAt,
          required final String status,
          required final int affectedQuantity,
          required final int? quantity,
          required final String? nameAnimal,
          required final String notes,
          required final List<PictureSymptom>? pictures,
          required final List<SymptomDto>? medicalSymptomDetails,
          required final List<PrescriptionDto>? prescriptions}) =
      _$MedicalSymptomDtoImpl;

  factory _MedicalSymptomDto.fromJson(Map<String, dynamic> json) =
      _$MedicalSymptomDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get farmingBatchId;
  @override
  String? get symtoms;
  @override
  String? get diagnosis;
  @override
  DateTime get createAt;
  @override
  String get status;
  @override
  int get affectedQuantity;
  @override
  int? get quantity;
  @override
  String? get nameAnimal;
  @override
  String get notes;
  @override
  List<PictureSymptom>? get pictures;
  @override
  List<SymptomDto>? get medicalSymptomDetails;
  @override
  List<PrescriptionDto>? get prescriptions;

  /// Create a copy of MedicalSymptomDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicalSymptomDtoImplCopyWith<_$MedicalSymptomDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
