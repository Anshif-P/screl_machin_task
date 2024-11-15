import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screl_machin_task/common/utils/screen_utils.dart';
import 'package:screl_machin_task/common/utils/app_colors.dart';

import '../../riverpod/form_step_provider/form_step_provider.dart';
import '../widgets/form_widget.dart';
import '../widgets/side_bar_widget.dart';

class FormSubmissionPage extends ConsumerWidget {
  const FormSubmissionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the formStepsProvider
    final formSteps = ref.watch(formStepsProvider);

    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 35.h),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: FormWidget(),
                  ),
                  kWidth10,
                  Expanded(
                    flex: 1,
                    child: SideBarWidget(formSteps: formSteps),
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
