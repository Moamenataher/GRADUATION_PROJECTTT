import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../logic/forgot_password/forgot_password_provider.dart';
import '../../../widgets/app_elevated_button.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppElevatedButton(
      onPressed: context.read<ForgotPasswordProvider>().sendForgotPasswordEmail,
      label: 'Send',
    );
  }
}
