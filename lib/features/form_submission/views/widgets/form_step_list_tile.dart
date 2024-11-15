import 'package:flutter/material.dart';
import 'package:screl_machin_task/common/utils/app_colors.dart';
import 'package:screl_machin_task/common/utils/app_text_styles.dart';

class FormStepListTile extends StatelessWidget {
  const FormStepListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.index,
    this.isActive,
  });
  final String title;
  final String subTitle;
  final int index;
  final bool? isActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      dense: true,
      leading: Container(
        // padding: const EdgeInsets.all(12),
        height: 35,
        width: 35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ?? false ? AppColors.primaryColor : AppColors.white,
            border: Border.all(
                color: isActive ?? false
                    ? AppColors.primaryColor
                    : AppColors.grey)),
        child: Text(
          '$index',
          style: AppTextStyles.button.copyWith(
              color: isActive ?? false ? AppColors.white : AppColors.grey),
        ),
      ),
      title: Text(
        title,
        style: AppTextStyles.title.copyWith(
            color: isActive ?? false ? AppColors.title : AppColors.greyDark),
      ),
      subtitle: Text(
        subTitle,
        style: AppTextStyles.subTitle,
      ),
    );
  }
}
