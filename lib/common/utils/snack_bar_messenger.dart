import 'package:flutter/material.dart';

import 'app_text_styles.dart';

class AppMessenger {
  static void showSuccess(
      {required BuildContext context, required String msg}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.green,
        content: Text(
          msg,
          style: AppTextStyles.button,
        )));
  }
}
