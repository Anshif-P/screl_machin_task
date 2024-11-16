import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/form_input_model/form_input_model.dart';
import '../riverpod/form_input_provider.dart';

class FormInputViewModel {
  final WidgetRef ref;

  FormInputViewModel(this.ref);

  /// Get the runOnlyCustomer form state
  bool get runOnlyCustomer =>
      ref.watch(formInputProvider).currentInputData?.runOncePerCustomer ??
      false;

  /// Get the customAudience form state
  bool get customAudience =>
      ref.watch(formInputProvider).currentInputData?.customAudience ?? false;

  /// Get the current inputData form state
  FormInputModel? get currentInput =>
      ref.watch(formInputProvider).currentInputData;

  ///updateRunOncePerCustomer
  void swithRunOnlyCustomer(bool value) {
    ref.read(formInputProvider.notifier).updateRunOncePerCustomer(value);
  }

  /// updateCustomAudience
  void switchCustomAudience(bool value) {
    ref.read(formInputProvider.notifier).updateCustomAudience(value);
  }

  /// retrieve saved Drafts
  void retrieveSavedDrafts() {
    ref.read(formInputProvider.notifier).retrieveSavedDrafts();
  }

  /// retrieve saved Drafts
  void loadSavedDraft(int id) {
    ref.read(formInputProvider.notifier).loadSavedDraft(id: id);
  }

  /// submit Data
  void submit({
    required String subject,
    required String preview,
    required String name,
    required String email,
    required int id,
  }) {
    ref.read(formInputProvider.notifier).submitData(
          id: id,
          subject: subject,
          preview: preview,
          name: name,
          email: email,
        );
  }

  void saveDraft({
    required String subject,
    required String preview,
    required String name,
    required String email,
    required int id,
    required BuildContext context,
  }) {
    ref.read(formInputProvider.notifier).saveDraft(
        id: id,
        subject: subject,
        preview: preview,
        name: name,
        email: email,
        context: context);
  }
}
