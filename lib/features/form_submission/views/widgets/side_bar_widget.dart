import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screl_machin_task/common/utils/app_colors.dart';
import 'package:screl_machin_task/common/utils/app_text_styles.dart';
import 'package:screl_machin_task/common/utils/screen_utils.dart';
import 'package:screl_machin_task/features/form_submission/model/form_step_model/form_step_model.dart';

import '../../riverpod/form_step_provider/form_step_provider.dart';
import '../widgets/form_step_list_tile.dart';

class SideBarWidget extends ConsumerWidget {
  const SideBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formSteps = ref.watch(formStepsProvider);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.white,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ...List.generate(
          formSteps.length,
          (index) {
            final step = formSteps[index];
            return FormStepListTile(
              title: step.title,
              subTitle: step.label,
              isActive: index == 0 || step.status == Status.completed,
              index: index + 1,
            );
          },
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Need Help?', style: AppTextStyles.title),
              kHeight5,
              const Text(
                'Get to know how your campaign \ncan reach a wider audience',
                style: AppTextStyles.subTitle,
              ),
              kHeight5,
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Text(
                  'Contact Us',
                  style: AppTextStyles.title,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
