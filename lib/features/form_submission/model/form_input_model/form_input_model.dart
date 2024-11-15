import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_input_model.freezed.dart';

@freezed
class FormInputModel with _$FormInputModel {
  const factory FormInputModel({
    required String? subject,
    required String? preview,
    required String? name,
    required String? email,
    required bool runOncePerCustomer,
    required bool customAudience,
  }) = _FormInputModel;
}
