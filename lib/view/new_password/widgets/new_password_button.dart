import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../logic/new_password/new_password_provider.dart';
import '../../../widgets/app_elevated_button.dart';

class NewPasswordButton extends StatelessWidget {
  const NewPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppElevatedButton(
      onPressed: context.read<NewPasswordProvider>().saveNewPassword,
      label: 'Save',
    );
  }
}
