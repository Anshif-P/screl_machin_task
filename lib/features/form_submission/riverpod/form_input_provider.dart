import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screl_machin_task/common/utils/snack_bar_messenger.dart';
import '../model/form_input_model/form_input_model.dart';
import '../repositories/form_input_box.dart';

final formInputProvider =
    StateNotifierProvider<FormInputNotifier, FormInputState>((ref) {
  return FormInputNotifier();
});

class FormInputNotifier extends StateNotifier<FormInputState> {
  FormInputNotifier()
      : super(FormInputState(
            currentInputData: const FormInputModel(
                id: null,
                subject: null,
                preview: null,
                name: null,
                email: null,
                runOncePerCustomer: false,
                customAudience: false)));
  final inputBox = FormInputBox();
  void updateRunOncePerCustomer(bool value) {
    state = state.copyWith(
      currentInputData:
          state.currentInputData?.copyWith(runOncePerCustomer: value),
    );
  }

  void updateCustomAudience(bool value) {
    state = state.copyWith(
      currentInputData: state.currentInputData?.copyWith(customAudience: value),
    );
  }

  void retrieveSavedDrafts({int? id}) async {
    final drafts = await inputBox.getFormInputModels();
    state = state.copyWith(savedDrafts: drafts);
    loadSavedDraft(id: id ?? 0);
  }

  void loadSavedDraft({required int id}) async {
    if (state.savedDrafts.isEmpty) return;

    final hasData = state.savedDrafts.any((e) {
      debugPrint(e.id.toString());
      return e.id == id;
    });
    debugPrint(hasData.toString());
    if (hasData == false) return;
    final draft = state.savedDrafts.firstWhere((e) => e.id == id);
    final inputData = state.currentInputData!.copyWith(
      name: draft.name,
      email: draft.email,
      preview: draft.preview,
      subject: draft.subject,
      customAudience: draft.customAudience,
      id: draft.id,
      runOncePerCustomer: draft.runOncePerCustomer,
    );

    state = state.copyWith(currentInputData: inputData);
  }

  void submitData({
    required String subject,
    required String preview,
    required String name,
    required String email,
    required int id,
  }) {
    final data = {
      'id': id,
      'subject': subject,
      'preview': preview,
      'name': name,
      'email': email,
      'run_once_per_customer': state.currentInputData?.runOncePerCustomer,
      'customAudience': state.currentInputData?.customAudience,
    };

    debugPrint(data.toString());

    List<FormInputModel> models = [...state.inputModels];
    models.add(state.currentInputData!.copyWith(id: id));

    state = state.copyWith(
      inputModels: models,
      currentInputData: state.currentInputData?.copyWith(
        name: '',
        email: '',
        preview: '',
        subject: '',
        customAudience: false,
        runOncePerCustomer: false,
        id: id,
      ),
    );
    loadSavedDraft(id: id + 1);
  }

  void saveDraft({
    required String subject,
    required String preview,
    required String name,
    required String email,
    required int id,
    required BuildContext context,
  }) {
    if (state.savedDrafts.any((e) => e.id == id)) {
      final index = state.savedDrafts.indexWhere((e) => e.id == id);
      inputBox.deleteFormInput(index);
    }

    final input = state.currentInputData!.copyWith(
      subject: subject,
      preview: preview,
      name: name,
      email: email,
      id: id,
    );
    inputBox.saveFormInput(input).whenComplete(() {
      if (context.mounted) {
        AppMessenger.showSuccess(
            context: context, msg: 'Draft Saved Successfully');
      }
    });
  }
}

class FormInputState {
  final FormInputModel? currentInputData;
  final List<FormInputModel> inputModels;
  final List<FormInputModel> savedDrafts;
  FormInputState(
      {this.currentInputData,
      this.inputModels = const [],
      this.savedDrafts = const []});

  FormInputState copyWith(
      {FormInputModel? currentInputData,
      List<FormInputModel>? inputModels,
      List<FormInputModel>? savedDrafts}) {
    return FormInputState(
      currentInputData: currentInputData ?? this.currentInputData,
      inputModels: inputModels ?? this.inputModels,
      savedDrafts: savedDrafts ?? this.savedDrafts,
    );
  }
}
