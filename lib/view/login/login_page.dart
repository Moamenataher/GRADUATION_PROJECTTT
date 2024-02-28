import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../logic/login/login_provider.dart';
import '../../widgets/app_elevated_button.dart';
import '../../widgets/app_rich_text.dart';
import '../../widgets/custom_app_bar.dart';
import '../register_page.dart';
import 'widgets/login_name_or_email_input.dart';
import 'widgets/login_password_input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome to Glovy!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff596992),
                    ),
                  ),
                  const SizedBox(height: 7),
                  const Text(
                    'Create an account or login to start using the app',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff797E83),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const LoginNameOrEmailInput(),
                  const SizedBox(height: 16),
                  const LoginPasswordInput(),
                  const SizedBox(height: 48),
                  AppElevatedButton(
                    onPressed: context.read<LoginProvider>().login,
                    label: 'Sign In',
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.center,
                    child: AppRichText(
                      firstText: 'Forgot Password?',
                      secondText: ' Reset password',
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ),
                      ),
                    ),
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
