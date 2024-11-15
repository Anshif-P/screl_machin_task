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
  String? get subject => throw _privateConstructorUsedError;
  String? get preview => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool get runOncePerCustomer => throw _privateConstructorUsedError;
  bool get customAudience => throw _privateConstructorUsedError;

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
      {String? subject,
      String? preview,
      String? name,
      String? email,
      bool runOncePerCustomer,
      bool customAudience});
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
      {String? subject,
      String? preview,
      String? name,
      String? email,
      bool runOncePerCustomer,
      bool customAudience});
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
    ));
  }
}

/// @nodoc

class _$FormInputModelImpl implements _FormInputModel {
  const _$FormInputModelImpl(
      {required this.subject,
      required this.preview,
      required this.name,
      required this.email,
      required this.runOncePerCustomer,
      required this.customAudience});

  @override
  final String? subject;
  @override
  final String? preview;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final bool runOncePerCustomer;
  @override
  final bool customAudience;

  @override
  String toString() {
    return 'FormInputModel(subject: $subject, preview: $preview, name: $name, email: $email, runOncePerCustomer: $runOncePerCustomer, customAudience: $customAudience)';
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
                other.customAudience == customAudience));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subject, preview, name, email,
      runOncePerCustomer, customAudience);

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
      {required final String? subject,
      required final String? preview,
      required final String? name,
      required final String? email,
      required final bool runOncePerCustomer,
      required final bool customAudience}) = _$FormInputModelImpl;

  @override
  String? get subject;
  @override
  String? get preview;
  @override
  String? get name;
  @override
  String? get email;
  @override
  bool get runOncePerCustomer;
  @override
  bool get customAudience;

  /// Create a copy of FormInputModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormInputModelImplCopyWith<_$FormInputModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
