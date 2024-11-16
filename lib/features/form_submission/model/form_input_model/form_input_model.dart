import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'form_input_model.freezed.dart';
part 'form_input_model.g.dart';

@freezed
@HiveType(typeId: 1)
class FormInputModel with _$FormInputModel {
  const factory FormInputModel({
    @HiveField(0) required String? subject,
    @HiveField(1) required String? preview,
    @HiveField(2) required String? name,
    @HiveField(3) required String? email,
    @HiveField(4) required bool runOncePerCustomer,
    @HiveField(5) required bool customAudience,
    @HiveField(6) required int? id,
  }) = _FormInputModel;
}
