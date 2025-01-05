// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vaccin_schedule_log_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VaccinScheduleLogDto _$VaccinScheduleLogDtoFromJson(Map<String, dynamic> json) {
  return _VaccinScheduleLogDto.fromJson(json);
}

/// @nodoc
mixin _$VaccinScheduleLogDto {
  String get date => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get taskId => throw _privateConstructorUsedError;

  /// Serializes this VaccinScheduleLogDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VaccinScheduleLogDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VaccinScheduleLogDtoCopyWith<VaccinScheduleLogDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccinScheduleLogDtoCopyWith<$Res> {
  factory $VaccinScheduleLogDtoCopyWith(VaccinScheduleLogDto value,
          $Res Function(VaccinScheduleLogDto) then) =
      _$VaccinScheduleLogDtoCopyWithImpl<$Res, VaccinScheduleLogDto>;
  @useResult
  $Res call({String date, String notes, String photo, String taskId});
}

/// @nodoc
class _$VaccinScheduleLogDtoCopyWithImpl<$Res,
        $Val extends VaccinScheduleLogDto>
    implements $VaccinScheduleLogDtoCopyWith<$Res> {
  _$VaccinScheduleLogDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VaccinScheduleLogDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? notes = null,
    Object? photo = null,
    Object? taskId = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VaccinScheduleLogDtoImplCopyWith<$Res>
    implements $VaccinScheduleLogDtoCopyWith<$Res> {
  factory _$$VaccinScheduleLogDtoImplCopyWith(_$VaccinScheduleLogDtoImpl value,
          $Res Function(_$VaccinScheduleLogDtoImpl) then) =
      __$$VaccinScheduleLogDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String notes, String photo, String taskId});
}

/// @nodoc
class __$$VaccinScheduleLogDtoImplCopyWithImpl<$Res>
    extends _$VaccinScheduleLogDtoCopyWithImpl<$Res, _$VaccinScheduleLogDtoImpl>
    implements _$$VaccinScheduleLogDtoImplCopyWith<$Res> {
  __$$VaccinScheduleLogDtoImplCopyWithImpl(_$VaccinScheduleLogDtoImpl _value,
      $Res Function(_$VaccinScheduleLogDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of VaccinScheduleLogDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? notes = null,
    Object? photo = null,
    Object? taskId = null,
  }) {
    return _then(_$VaccinScheduleLogDtoImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VaccinScheduleLogDtoImpl implements _VaccinScheduleLogDto {
  const _$VaccinScheduleLogDtoImpl(
      {required this.date,
      required this.notes,
      required this.photo,
      required this.taskId});

  factory _$VaccinScheduleLogDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VaccinScheduleLogDtoImplFromJson(json);

  @override
  final String date;
  @override
  final String notes;
  @override
  final String photo;
  @override
  final String taskId;

  @override
  String toString() {
    return 'VaccinScheduleLogDto(date: $date, notes: $notes, photo: $photo, taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VaccinScheduleLogDtoImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, notes, photo, taskId);

  /// Create a copy of VaccinScheduleLogDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VaccinScheduleLogDtoImplCopyWith<_$VaccinScheduleLogDtoImpl>
      get copyWith =>
          __$$VaccinScheduleLogDtoImplCopyWithImpl<_$VaccinScheduleLogDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VaccinScheduleLogDtoImplToJson(
      this,
    );
  }
}

abstract class _VaccinScheduleLogDto implements VaccinScheduleLogDto {
  const factory _VaccinScheduleLogDto(
      {required final String date,
      required final String notes,
      required final String photo,
      required final String taskId}) = _$VaccinScheduleLogDtoImpl;

  factory _VaccinScheduleLogDto.fromJson(Map<String, dynamic> json) =
      _$VaccinScheduleLogDtoImpl.fromJson;

  @override
  String get date;
  @override
  String get notes;
  @override
  String get photo;
  @override
  String get taskId;

  /// Create a copy of VaccinScheduleLogDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VaccinScheduleLogDtoImplCopyWith<_$VaccinScheduleLogDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
