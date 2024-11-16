import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'common/utils/app_colors.dart';
import 'features/form_submission/model/form_input_model/form_input_model.dart';
import 'features/form_submission/views/pages/form_submission_page.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(FormInputModelAdapter());
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 813),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.from(
          textTheme: const TextTheme().apply(fontFamily: 'Poppins'),
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        ),
        home: const FormSubmissionPage(),
      ),
    );
  }
}
