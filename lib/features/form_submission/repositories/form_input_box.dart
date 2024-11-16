import 'package:hive_flutter/hive_flutter.dart';

import '../model/form_input_model/form_input_model.dart';

class FormInputBox {
  static const String _boxName = 'formInputs';

  /// Save a FormInputModel to Hive
  Future<void> saveFormInput(FormInputModel formInputModel) async {
    final box = await Hive.openBox<FormInputModel>(_boxName);
    await box.add(formInputModel);
  }

  /// Get all FormInputModels from Hive
  Future<List<FormInputModel>> getFormInputModels() async {
    final box = await Hive.openBox<FormInputModel>(_boxName);
    return box.values.toList();
  }

  /// Delete a FormInputModel by index
  Future<void> deleteFormInput(int index) async {
    final box = await Hive.openBox<FormInputModel>(_boxName);

    await box.deleteAt(index);
  }
}
