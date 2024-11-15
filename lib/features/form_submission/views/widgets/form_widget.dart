import 'package:flutter/material.dart';
import 'package:screl_machin_task/common/utils/app_colors.dart';
import 'package:screl_machin_task/common/utils/screen_utils.dart';

import '../../../../common/utils/app_text_styles.dart';
import '../componets/custom_button.dart';
import '../componets/custom_form_field.dart';
import '../componets/togle_list_tile.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.white,
        ),
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
            const CustomTextFormField(
              label: 'Campaign Subject',
              hint: 'Enter Subject',
            ),
            kHeight20,
            const CustomTextFormField(
              label: 'Preview text',
              hint: 'Enter text here',
              helperText: 'Keep this simple of 50 charecter',
              minLine: 3,
            ),
            kHeight20,
            Row(
              children: [
                const Expanded(
                  child: CustomTextFormField(
                    label: '"From" Name',
                    hint: 'Fromm Anne',
                  ),
                ),
                kWidth5,
                const Expanded(
                  child: CustomTextFormField(
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
            const TogleListTile(
              label: 'Run only once per customer',
              isActive: true,
            ),
            kHeight,
            const TogleListTile(
              label: 'Custom audience',
              isActive: false,
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
                const Expanded(
                  flex: 3,
                  child: CustomButton(
                    label: 'Next Step',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
