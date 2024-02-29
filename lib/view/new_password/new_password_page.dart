import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../logic/new_password/new_password_provider.dart';

import 'widgets/new_password_form.dart';

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => NewPasswordProvider(),
        child: const SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: NewPasswordForm(),
            ),
          ),
        ),
      ),
    );
  }
}
