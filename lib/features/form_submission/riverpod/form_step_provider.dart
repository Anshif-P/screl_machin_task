import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/form_step_model/form_step_model.dart';
import '../views/widgets/form_widget.dart';

final formStepsProvider =
    StateNotifierProvider<FormStepsNotifier, FormStepsState>((ref) {
  return FormStepsNotifier();
});

class FormStepsNotifier extends StateNotifier<FormStepsState> {
  FormStepsNotifier()
      : super(
          FormStepsState(
            formSteps: formSteps,
            currentIndex: 0,
          ),
        );

  void nextStep() {
    if (state.currentIndex < state.formSteps.length) {
      final updatedSteps = [...state.formSteps];
      updatedSteps[state.currentIndex] =
          updatedSteps[state.currentIndex].copyWith(status: Status.completed);

      state = state.copyWith(
        formSteps: updatedSteps,
        currentIndex: state.currentIndex + 1,
      );
    }
  }

  void previousStep() {
    if (state.currentIndex > 0) {
      state = state.copyWith(currentIndex: state.currentIndex - 1);
    }
  }
}

class FormStepsState {
  final List<FormStepsModel> formSteps;
  final int currentIndex;

  FormStepsState({
    required this.formSteps,
    required this.currentIndex,
  });

  FormStepsState copyWith({
    List<FormStepsModel>? formSteps,
    int? currentIndex,
  }) {
    return FormStepsState(
      formSteps: formSteps ?? this.formSteps,
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}

List<FormStepsModel> formSteps = [
  FormStepsModel(
      title: 'Create New Campaign',
      label: 'Fill out these details and get your campaign ready',
      status: Status.pending,
      formWidget: FormWidget()),
  FormStepsModel(
      title: 'Create Segments',
      label: 'Get full control over your audience',
      status: Status.pending,
      formWidget: FormWidget()),
  FormStepsModel(
      title: 'Bidding strategy',
      label: 'Optimize your campaign reach with AdSense',
      status: Status.pending,
      formWidget: FormWidget()),
  FormStepsModel(
      title: 'Site Links',
      label: 'Setup your customer journey flow',
      status: Status.pending,
      formWidget: FormWidget()),
  FormStepsModel(
      title: 'Review Campaign',
      label: 'Double-check your campaign is ready to go!',
      status: Status.pending,
      formWidget: FormWidget()),
];
