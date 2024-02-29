import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../logic/forgot_password/forgot_password_provider.dart';
import 'forgot_password_button.dart';
import 'forgot_password_email_input.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ForgotPasswordProvider>().formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 100.0,
              bottom: 40.0,
            ),
            child: SvgPicture.asset(
              "assets/images/forgot_password.svg",
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Reset password",
              style: TextStyle(
                fontSize: 22,
                color: Color(0xff596992),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Enter the email associated with your account and we will send an email with instructions to reset your password",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff8E95A7),
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 20),
          const ForgotPasswordEmailInput(),
          const Padding(
            padding: EdgeInsets.only(
              top: 150.0,
              bottom: 120.0,
            ),
            child: ForgotPasswordButton(),
          ),
        ],
      ),
    );
  }
}