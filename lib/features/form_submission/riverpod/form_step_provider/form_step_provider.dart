import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../model/form_step_model/form_step_model.dart';
import '../../view_model/form_step_view_model.dart';

final formStepsProvider =
    StateNotifierProvider<FormStepsViewModel, List<FormStepsModel>>((ref) {
  return FormStepsViewModel();
});
