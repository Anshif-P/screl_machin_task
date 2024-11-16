// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_input_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormInputModel {
  @HiveField(0)
  String? get subject => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get preview => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get runOncePerCustomer => throw _privateConstructorUsedError;
  @HiveField(5)
  bool get customAudience => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get id => throw _privateConstructorUsedError;

  /// Create a copy of FormInputModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormInputModelCopyWith<FormInputModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormInputModelCopyWith<$Res> {
  factory $FormInputModelCopyWith(
          FormInputModel value, $Res Function(FormInputModel) then) =
      _$FormInputModelCopyWithImpl<$Res, FormInputModel>;
  @useResult
  $Res call(
      {@HiveField(0) String? subject,
      @HiveField(1) String? preview,
      @HiveField(2) String? name,
      @HiveField(3) String? email,
      @HiveField(4) bool runOncePerCustomer,
      @HiveField(5) bool customAudience,
      @HiveField(6) int? id});
}

/// @nodoc
class _$FormInputModelCopyWithImpl<$Res, $Val extends FormInputModel>
    implements $FormInputModelCopyWith<$Res> {
  _$FormInputModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormInputModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = freezed,
    Object? preview = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? runOncePerCustomer = null,
    Object? customAudience = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      preview: freezed == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      runOncePerCustomer: null == runOncePerCustomer
          ? _value.runOncePerCustomer
          : runOncePerCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      customAudience: null == customAudience
          ? _value.customAudience
          : customAudience // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormInputModelImplCopyWith<$Res>
    implements $FormInputModelCopyWith<$Res> {
  factory _$$FormInputModelImplCopyWith(_$FormInputModelImpl value,
          $Res Function(_$FormInputModelImpl) then) =
      __$$FormInputModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? subject,
      @HiveField(1) String? preview,
      @HiveField(2) String? name,
      @HiveField(3) String? email,
      @HiveField(4) bool runOncePerCustomer,
      @HiveField(5) bool customAudience,
      @HiveField(6) int? id});
}

/// @nodoc
class __$$FormInputModelImplCopyWithImpl<$Res>
    extends _$FormInputModelCopyWithImpl<$Res, _$FormInputModelImpl>
    implements _$$FormInputModelImplCopyWith<$Res> {
  __$$FormInputModelImplCopyWithImpl(
      _$FormInputModelImpl _value, $Res Function(_$FormInputModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormInputModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = freezed,
    Object? preview = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? runOncePerCustomer = null,
    Object? customAudience = null,
    Object? id = freezed,
  }) {
    return _then(_$FormInputModelImpl(
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      preview: freezed == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      runOncePerCustomer: null == runOncePerCustomer
          ? _value.runOncePerCustomer
          : runOncePerCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      customAudience: null == customAudience
          ? _value.customAudience
          : customAudience // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FormInputModelImpl implements _FormInputModel {
  const _$FormInputModelImpl(
      {@HiveField(0) required this.subject,
      @HiveField(1) required this.preview,
      @HiveField(2) required this.name,
      @HiveField(3) required this.email,
      @HiveField(4) required this.runOncePerCustomer,
      @HiveField(5) required this.customAudience,
      @HiveField(6) required this.id});

  @override
  @HiveField(0)
  final String? subject;
  @override
  @HiveField(1)
  final String? preview;
  @override
  @HiveField(2)
  final String? name;
  @override
  @HiveField(3)
  final String? email;
  @override
  @HiveField(4)
  final bool runOncePerCustomer;
  @override
  @HiveField(5)
  final bool customAudience;
  @override
  @HiveField(6)
  final int? id;

  @override
  String toString() {
    return 'FormInputModel(subject: $subject, preview: $preview, name: $name, email: $email, runOncePerCustomer: $runOncePerCustomer, customAudience: $customAudience, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormInputModelImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.preview, preview) || other.preview == preview) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.runOncePerCustomer, runOncePerCustomer) ||
                other.runOncePerCustomer == runOncePerCustomer) &&
            (identical(other.customAudience, customAudience) ||
                other.customAudience == customAudience) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subject, preview, name, email,
      runOncePerCustomer, customAudience, id);

  /// Create a copy of FormInputModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormInputModelImplCopyWith<_$FormInputModelImpl> get copyWith =>
      __$$FormInputModelImplCopyWithImpl<_$FormInputModelImpl>(
          this, _$identity);
}

abstract class _FormInputModel implements FormInputModel {
  const factory _FormInputModel(
      {@HiveField(0) required final String? subject,
      @HiveField(1) required final String? preview,
      @HiveField(2) required final String? name,
      @HiveField(3) required final String? email,
      @HiveField(4) required final bool runOncePerCustomer,
      @HiveField(5) required final bool customAudience,
      @HiveField(6) required final int? id}) = _$FormInputModelImpl;

  @override
  @HiveField(0)
  String? get subject;
  @override
  @HiveField(1)
  String? get preview;
  @override
  @HiveField(2)
  String? get name;
  @override
  @HiveField(3)
  String? get email;
  @override
  @HiveField(4)
  bool get runOncePerCustomer;
  @override
  @HiveField(5)
  bool get customAudience;
  @override
  @HiveField(6)
  int? get id;

  /// Create a copy of FormInputModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormInputModelImplCopyWith<_$FormInputModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
