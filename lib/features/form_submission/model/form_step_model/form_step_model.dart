import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_step_model.freezed.dart';

enum Status { completed, pending }

@freezed
class FormStepsModel with _$FormStepsModel {
  const factory FormStepsModel({
    required String title,
    required String label,
    required Status status,
    required Widget formWidget,
  }) = _FormStepsModel;
}
