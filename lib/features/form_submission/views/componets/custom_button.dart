import 'package:flutter/widgets.dart';
import 'package:screl_machin_task/common/utils/app_colors.dart';

import '../../../../common/utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    this.hasOutline = false,
  });
  final String label;
  final bool hasOutline;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: hasOutline ? null : AppColors.primaryColor,
        border: hasOutline ? Border.all(color: AppColors.primaryColor) : null,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: AppTextStyles.button.copyWith(
          color: hasOutline ? AppColors.primaryColor : AppColors.white,
        ),
      ),
    );
  }
}
