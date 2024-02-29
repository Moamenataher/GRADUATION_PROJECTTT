import 'package:flutter/material.dart';

class ForgotPasswordProvider extends ChangeNotifier {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return 'Email is required';
    }
    return null;
  }

  void sendForgotPasswordEmail() {
    if (!formKey.currentState!.validate()) {
      return;
    }

    //TODO: Send email to the user
  }
}
