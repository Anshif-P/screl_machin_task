import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/form_input_model/form_input_model.dart';

final formInputProvider =
    StateNotifierProvider<FormInputNotifier, FormInputState>((ref) {
  return FormInputNotifier();
});

class FormInputNotifier extends StateNotifier<FormInputState> {
  FormInputNotifier()
      : super(FormInputState(
            inputModel: const FormInputModel(
                subject: null,
                preview: null,
                name: null,
                email: null,
                runOncePerCustomer: false,
                customAudience: false)));

  void updateRunOncePerCustomer(bool value) {
    state = state.copyWith(
      inputModel: state.inputModel?.copyWith(runOncePerCustomer: value),
    );
  }

  void updateCustomAudience(bool value) {
    state = state.copyWith(
      inputModel: state.inputModel?.copyWith(customAudience: value),
    );
  }

  void submitData({
    required String subject,
    required String preview,
    required String name,
    required String email,
  }) {
    final data = {
      'subject': subject,
      'preview': preview,
      'name': name,
      'email': email,
      'run_once_per_customer': state.inputModel?.runOncePerCustomer,
      'customAudience': state.inputModel?.customAudience,
    };
    print(data);
  }
}

class FormInputState {
  final FormInputModel? inputModel;

  FormInputState({this.inputModel});

  FormInputState copyWith({FormInputModel? inputModel}) {
    return FormInputState(
      inputModel: inputModel ?? this.inputModel,
    );
  }
}
