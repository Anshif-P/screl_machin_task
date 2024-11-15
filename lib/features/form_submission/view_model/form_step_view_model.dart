import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/form_step_model/form_step_model.dart';
import '../riverpod/form_step_provider.dart';

class FormStepsViewModel {
  final WidgetRef ref;

  FormStepsViewModel(this.ref);

  /// Get the current form steps list
  List<FormStepsModel> get formSteps => ref.watch(formStepsProvider).formSteps;

  /// Get the current index
  int get currentIndex => ref.watch(formStepsProvider).currentIndex;

  /// Go to the next step
  void nextStep() {
    ref.read(formStepsProvider.notifier).nextStep();
  }

  /// Go to the previous step
  void previousStep() {
    ref.read(formStepsProvider.notifier).previousStep();
  }
}
