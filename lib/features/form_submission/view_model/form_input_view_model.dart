import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../riverpod/form_input_provider.dart';

class FormInputViewModel {
  final WidgetRef ref;

  FormInputViewModel(this.ref);

  /// Get the runOnlyCustomer form state
  bool get runOnlyCustomer =>
      ref.watch(formInputProvider).inputModel?.runOncePerCustomer ?? false;

  /// Get the customAudience form state
  bool get customAudience =>
      ref.watch(formInputProvider).inputModel?.customAudience ?? false;

  ///updateRunOncePerCustomer
  void swithRunOnlyCustomer(bool value) {
    ref.read(formInputProvider.notifier).updateRunOncePerCustomer(value);
  }

  /// updateCustomAudience
  void switchCustomAudience(bool value) {
    ref.read(formInputProvider.notifier).updateCustomAudience(value);
  }

  /// submit Data
  void submit({
    required String subject,
    required String preview,
    required String name,
    required String email,
  }) {
    ref.read(formInputProvider.notifier).submitData(
        subject: subject, preview: preview, name: name, email: email);
  }
}
