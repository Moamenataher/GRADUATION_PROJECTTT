import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../logic/new_password/new_password_provider.dart';
import 'new_password_button.dart';
import 'new_password_confirmation_input.dart';
import 'new_password_input.dart';

class NewPasswordForm extends StatelessWidget {
  const NewPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<NewPasswordProvider>().formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: SvgPicture.asset(
                  "assets/icons/arrow_back_ic.svg",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              bottom: 40.0,
            ),
            child: SvgPicture.asset(
              "assets/images/new_password.svg",
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Enter new password",
              style: TextStyle(
                fontSize: 22,
                color: Color(0xff596992),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Your new password must be different from previous used passwords",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff8E95A7),
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 20),
          const NewPasswordInput(),
          const SizedBox(height: 16),
          const NewPasswordConfirmationInput(),
          const Padding(
            padding: EdgeInsets.only(
              top: 100.0,
              bottom: 120.0,
            ),
            child: NewPasswordButton(),
          ),
        ],
      ),
    );
  }
}
