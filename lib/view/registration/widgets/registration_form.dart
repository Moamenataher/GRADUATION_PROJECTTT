import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../logic/registration/registration_provider.dart';
import '../../../widgets/app_elevated_button.dart';
import '../../../widgets/app_rich_text.dart';
import '../../login/login_page.dart';
import 'registration_date_input.dart';
import 'registration_email_input.dart';
import 'registration_name_input.dart';
import 'registration_password_confirmation_input.dart';
import 'registration_password_input.dart';
import 'registration_phone_input.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegistrationProvider>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RegistrationNameInput(),
          const SizedBox(height: 16),
          const RegistrationEmailInput(),
          const SizedBox(height: 16),
          const RegistrationPhoneInput(),
          const SizedBox(height: 16),
          const RegistrationDateInput(),
          const SizedBox(height: 16),
          const RegistrationPasswordInput(),
          const SizedBox(height: 16),
          const RegistrationPasswordConfirmationInput(),
          const SizedBox(height: 48),
          const _RegisterButton(),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.center,
            child: AppRichText(
              firstText: 'Already a member?',
              secondText: ' Login',
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _RegisterButton extends StatelessWidget {
  const _RegisterButton();

  @override
  Widget build(BuildContext context) {
    return AppElevatedButton(
      onPressed: context.read<RegistrationProvider>().register,
      label: 'Sign In',
    );
  }
}