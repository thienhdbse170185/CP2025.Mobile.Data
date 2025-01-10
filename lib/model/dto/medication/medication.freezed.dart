// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MedicationDto _$MedicationDtoFromJson(Map<String, dynamic> json) {
  return _MedicationDto.fromJson(json);
}

/// @nodoc
mixin _$MedicationDto {
  String get medicationId => throw _privateConstructorUsedError;
  String get medicationName => throw _privateConstructorUsedError;
  int get dosage => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  bool get morning => throw _privateConstructorUsedError;
  bool get afternoon => throw _privateConstructorUsedError;
  bool get evening => throw _privateConstructorUsedError;
  bool get noon => throw _privateConstructorUsedError;

  /// Serializes this MedicationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationDtoCopyWith<MedicationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationDtoCopyWith<$Res> {
  factory $MedicationDtoCopyWith(
          MedicationDto value, $Res Function(MedicationDto) then) =
      _$MedicationDtoCopyWithImpl<$Res, MedicationDto>;
  @useResult
  $Res call(
      {String medicationId,
      String medicationName,
      int dosage,
      int duration,
      bool morning,
      bool afternoon,
      bool evening,
      bool noon});
}

/// @nodoc
class _$MedicationDtoCopyWithImpl<$Res, $Val extends MedicationDto>
    implements $MedicationDtoCopyWith<$Res> {
  _$MedicationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicationId = null,
    Object? medicationName = null,
    Object? dosage = null,
    Object? duration = null,
    Object? morning = null,
    Object? afternoon = null,
    Object? evening = null,
    Object? noon = null,
  }) {
    return _then(_value.copyWith(
      medicationId: null == medicationId
          ? _value.medicationId
          : medicationId // ignore: cast_nullable_to_non_nullable
              as String,
      medicationName: null == medicationName
          ? _value.medicationName
          : medicationName // ignore: cast_nullable_to_non_nullable
              as String,
      dosage: null == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      morning: null == morning
          ? _value.morning
          : morning // ignore: cast_nullable_to_non_nullable
              as bool,
      afternoon: null == afternoon
          ? _value.afternoon
          : afternoon // ignore: cast_nullable_to_non_nullable
              as bool,
      evening: null == evening
          ? _value.evening
          : evening // ignore: cast_nullable_to_non_nullable
              as bool,
      noon: null == noon
          ? _value.noon
          : noon // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationDtoImplCopyWith<$Res>
    implements $MedicationDtoCopyWith<$Res> {
  factory _$$MedicationDtoImplCopyWith(
          _$MedicationDtoImpl value, $Res Function(_$MedicationDtoImpl) then) =
      __$$MedicationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String medicationId,
      String medicationName,
      int dosage,
      int duration,
      bool morning,
      bool afternoon,
      bool evening,
      bool noon});
}

/// @nodoc
class __$$MedicationDtoImplCopyWithImpl<$Res>
    extends _$MedicationDtoCopyWithImpl<$Res, _$MedicationDtoImpl>
    implements _$$MedicationDtoImplCopyWith<$Res> {
  __$$MedicationDtoImplCopyWithImpl(
      _$MedicationDtoImpl _value, $Res Function(_$MedicationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicationId = null,
    Object? medicationName = null,
    Object? dosage = null,
    Object? duration = null,
    Object? morning = null,
    Object? afternoon = null,
    Object? evening = null,
    Object? noon = null,
  }) {
    return _then(_$MedicationDtoImpl(
      medicationId: null == medicationId
          ? _value.medicationId
          : medicationId // ignore: cast_nullable_to_non_nullable
              as String,
      medicationName: null == medicationName
          ? _value.medicationName
          : medicationName // ignore: cast_nullable_to_non_nullable
              as String,
      dosage: null == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      morning: null == morning
          ? _value.morning
          : morning // ignore: cast_nullable_to_non_nullable
              as bool,
      afternoon: null == afternoon
          ? _value.afternoon
          : afternoon // ignore: cast_nullable_to_non_nullable
              as bool,
      evening: null == evening
          ? _value.evening
          : evening // ignore: cast_nullable_to_non_nullable
              as bool,
      noon: null == noon
          ? _value.noon
          : noon // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationDtoImpl implements _MedicationDto {
  const _$MedicationDtoImpl(
      {required this.medicationId,
      required this.medicationName,
      required this.dosage,
      required this.duration,
      required this.morning,
      required this.afternoon,
      required this.evening,
      required this.noon});

  factory _$MedicationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationDtoImplFromJson(json);

  @override
  final String medicationId;
  @override
  final String medicationName;
  @override
  final int dosage;
  @override
  final int duration;
  @override
  final bool morning;
  @override
  final bool afternoon;
  @override
  final bool evening;
  @override
  final bool noon;

  @override
  String toString() {
    return 'MedicationDto(medicationId: $medicationId, medicationName: $medicationName, dosage: $dosage, duration: $duration, morning: $morning, afternoon: $afternoon, evening: $evening, noon: $noon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationDtoImpl &&
            (identical(other.medicationId, medicationId) ||
                other.medicationId == medicationId) &&
            (identical(other.medicationName, medicationName) ||
                other.medicationName == medicationName) &&
            (identical(other.dosage, dosage) || other.dosage == dosage) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.morning, morning) || other.morning == morning) &&
            (identical(other.afternoon, afternoon) ||
                other.afternoon == afternoon) &&
            (identical(other.evening, evening) || other.evening == evening) &&
            (identical(other.noon, noon) || other.noon == noon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, medicationId, medicationName,
      dosage, duration, morning, afternoon, evening, noon);

  /// Create a copy of MedicationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationDtoImplCopyWith<_$MedicationDtoImpl> get copyWith =>
      __$$MedicationDtoImplCopyWithImpl<_$MedicationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationDtoImplToJson(
      this,
    );
  }
}

abstract class _MedicationDto implements MedicationDto {
  const factory _MedicationDto(
      {required final String medicationId,
      required final String medicationName,
      required final int dosage,
      required final int duration,
      required final bool morning,
      required final bool afternoon,
      required final bool evening,
      required final bool noon}) = _$MedicationDtoImpl;

  factory _MedicationDto.fromJson(Map<String, dynamic> json) =
      _$MedicationDtoImpl.fromJson;

  @override
  String get medicationId;
  @override
  String get medicationName;
  @override
  int get dosage;
  @override
  int get duration;
  @override
  bool get morning;
  @override
  bool get afternoon;
  @override
  bool get evening;
  @override
  bool get noon;

  /// Create a copy of MedicationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationDtoImplCopyWith<_$MedicationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
