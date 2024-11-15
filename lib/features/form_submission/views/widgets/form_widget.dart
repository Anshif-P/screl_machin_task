import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screl_machin_task/common/utils/app_colors.dart';
import 'package:screl_machin_task/common/utils/form_validation.dart';
import 'package:screl_machin_task/common/utils/screen_utils.dart';
import 'package:screl_machin_task/features/form_submission/view_model/form_input_view_model.dart';

import '../../../../common/utils/app_text_styles.dart';
import '../../view_model/form_step_view_model.dart';
import '../componets/custom_button.dart';
import '../componets/custom_form_field.dart';
import '../componets/togle_list_tile.dart';

class FormWidget extends ConsumerWidget {
  FormWidget({
    super.key,
  });
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController previewController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mailController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = FormStepsViewModel(ref);
    final inputViewModel = FormInputViewModel(ref);
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.white,
        ),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const Text(
                'Create New Email Campaign',
                style: AppTextStyles.h1,
              ),
              kHeight,
              const Text(
                'Fill out these details to build your brodcast',
                style: AppTextStyles.h2Light,
              ),
              kHeight30,
              CustomTextFormField(
                controller: subjectController,
                validator: (value) => Validations.emptyValidation(value),
                label: 'Campaign Subject',
                hint: 'Enter Subject',
              ),
              kHeight20,
              CustomTextFormField(
                controller: previewController,
                validator: (value) => Validations.emptyValidation(value),
                label: 'Preview text',
                hint: 'Enter text here',
                helperText: 'Keep this simple of 50 charecter',
                minLine: 3,
              ),
              kHeight20,
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: nameController,
                      validator: (value) => Validations.emptyValidation(value),
                      label: '"From" Name',
                      hint: 'Fromm Anne',
                    ),
                  ),
                  kWidth5,
                  Expanded(
                    child: CustomTextFormField(
                      controller: mailController,
                      validator: (value) => Validations.emailValidation(value),
                      label: '"From" Email',
                      hint: 'Anne@example.com',
                    ),
                  ),
                ],
              ),
              kHeight20,
              const Divider(
                color: AppColors.greyLight,
                thickness: 1.5,
              ),
              TogleListTile(
                label: 'Run only once per customer',
                isActive: inputViewModel.runOnlyCustomer,
                onChanged: (v) {
                  inputViewModel.swithRunOnlyCustomer(v);
                },
              ),
              kHeight,
              TogleListTile(
                label: 'Custom audience',
                isActive: inputViewModel.customAudience,
                onChanged: (v) {
                  inputViewModel.switchCustomAudience(v);
                },
              ),
              kHeight15,
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: 'You can set up a'),
                    TextSpan(
                        text:
                            ' custom domain or connect your email service provider ',
                        style: AppTextStyles.caption1
                            .copyWith(color: AppColors.primaryColor)),
                    const TextSpan(text: 'to change this.'),
                  ],
                ),
                style: AppTextStyles.caption1,
              ),
              kHeight20,
              const Divider(
                color: AppColors.greyLight,
                thickness: 1.5,
              ),
              kHeight20,
              Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: CustomButton(
                      label: 'Save Draft',
                      hasOutline: true,
                    ),
                  ),
                  kWidth5,
                  Expanded(
                    flex: 3,
                    child: InkWell(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          inputViewModel.submit(
                            subject: subjectController.text,
                            preview: previewController.text,
                            name: nameController.text,
                            email: mailController.text,
                          );
                          subjectController.clear();
                          previewController.clear();
                          nameController.clear();
                          mailController.clear();
                          viewModel.nextStep();
                        }
                      },
                      child: const CustomButton(
                        label: 'Next Step',
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
