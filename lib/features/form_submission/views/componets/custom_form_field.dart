import 'package:flutter/material.dart';
import 'package:screl_machin_task/common/utils/app_text_styles.dart';

import '../../../../common/utils/app_colors.dart';
import '../../../../common/utils/screen_utils.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.validator,
    required this.label,
    required this.hint,
    this.minLine = 1,
    this.helperText,
  });
  final TextEditingController controller;
  final FormFieldValidator validator;
  final String label;
  final String hint;
  final String? helperText;
  final int minLine;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.labelTextStyle,
        ),
        kHeight5,
        TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
              focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)),
              errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.grey)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryColor)),
              hintText: hint,
              hintStyle: AppTextStyles.hintTextStyle),
          minLines: minLine,
          maxLines: minLine,
        ),
        if (helperText != null) ...[
          kHeight5,
          Text(
            helperText ?? '',
            style: AppTextStyles.caption1,
          )
        ]
      ],
    );
  }
}
