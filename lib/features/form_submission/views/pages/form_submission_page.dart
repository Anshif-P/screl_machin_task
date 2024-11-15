import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screl_machin_task/common/utils/screen_utils.dart';
import 'package:screl_machin_task/common/utils/app_colors.dart';

import '../widgets/form_widget.dart';
import '../widgets/side_bar_widget.dart';

class FormSubmissionPage extends StatelessWidget {
  const FormSubmissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 35.h),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: FormWidget(),
                  ),
                  kWidth10,
                  const Expanded(
                    flex: 1,
                    child: SideBarWidget(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
