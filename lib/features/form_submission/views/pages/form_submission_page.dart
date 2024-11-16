import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screl_machin_task/common/utils/responsive.dart';
import 'package:screl_machin_task/common/utils/screen_utils.dart';
import 'package:screl_machin_task/common/utils/app_colors.dart';

import '../../view_model/form_input_view_model.dart';
import '../widgets/form_widget.dart';
import '../widgets/side_bar_widget.dart';

class FormSubmissionPage extends ConsumerWidget {
  const FormSubmissionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    FormInputViewModel(ref).retrieveSavedDrafts();
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Responsive.isMobile(context)
          ? SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: SafeArea(
                child: Column(
                  children: [
                    const SideBarWidget(),
                    kHeight20,
                    FormWidget(),
                  ],
                ),
              ),
            )
          : Padding(
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
