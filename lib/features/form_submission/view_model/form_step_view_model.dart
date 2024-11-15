import 'package:screl_machin_task/features/form_submission/views/widgets/form_widget.dart';

import '../model/form_step_model/form_step_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormStepsViewModel extends StateNotifier<List<FormStepsModel>> {
  FormStepsViewModel() : super(_initialSteps);

  void nextStep(int index) {
    if (index < state.length) {
      state = [
        for (int i = 0; i < state.length; i++)
          if (i == index)
            state[i].copyWith(status: Status.completed)
          else
            state[i]
      ];
    }
  }

  static final List<FormStepsModel> _initialSteps = [
    const FormStepsModel(
        title: 'Create New Campaign',
        label: 'Fill out these details and get your campaign ready',
        status: Status.pending,
        formWidget: FormWidget()),
    const FormStepsModel(
        title: 'Create Segments',
        label: 'get full controll over your audience',
        status: Status.pending,
        formWidget: FormWidget()),
    const FormStepsModel(
        title: 'Bidding strategy',
        label: 'Optimize your campaign reach with adsense',
        status: Status.pending,
        formWidget: FormWidget()),
    const FormStepsModel(
        title: 'Site Links',
        label: 'Setup your customer journey flow',
        status: Status.pending,
        formWidget: FormWidget()),
    const FormStepsModel(
        title: 'Review Campaign',
        label: 'Double check your campaign is ready to go!',
        status: Status.pending,
        formWidget: FormWidget()),
  ];
}
