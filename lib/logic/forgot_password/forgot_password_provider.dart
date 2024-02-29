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

  Future<bool> sendForgotPasswordEmail() async {
    if (!formKey.currentState!.validate()) {
      return false;
    }

    //TODO: Send email to the user
    return true;
  }
}
