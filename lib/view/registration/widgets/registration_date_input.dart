import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../logic/registration/registration_provider.dart';
import '../../../widgets/app_text_field.dart';

class RegistrationDateInput extends StatelessWidget {
  const RegistrationDateInput({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: context.read<RegistrationProvider>().dateController,
      keyboardType: TextInputType.datetime,
      label: 'Birth date',
      suffixIcon: SvgPicture.asset(
        'assets/icons/calendar_ic.svg',
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Birth date is required';
        }
        return null;
      },
    );
  }
}
