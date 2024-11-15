import 'package:flutter/material.dart';
import 'package:screl_machin_task/common/utils/app_colors.dart';
import 'package:screl_machin_task/common/utils/app_text_styles.dart';

class TogleListTile extends StatelessWidget {
  const TogleListTile({
    super.key,
    required this.label,
    required this.isActive,
  });
  final String label;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            label,
            style: isActive
                ? AppTextStyles.labelTextStyle
                : AppTextStyles.labelTextStyle.copyWith(color: AppColors.grey),
          ),
        ),
        Transform.scale(
          scale: 0.8,
          child: Switch(
            value: isActive,
            onChanged: (v) {},
            thumbIcon: const WidgetStatePropertyAll(Icon(
              Icons.circle,
              color: AppColors.white,
            )),
            activeColor: AppColors.white,
            activeTrackColor: AppColors.primaryColor,
            inactiveTrackColor: AppColors.greyLight,
            thumbColor: const WidgetStatePropertyAll(AppColors.white),
            trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
          ),
        ),
      ],
    );
  }
}
