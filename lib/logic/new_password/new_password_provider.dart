import 'package:flutter/material.dart';

class NewPasswordProvider extends ChangeNotifier {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController newPasswordConfirmationController =
      TextEditingController();

  bool _isPasswordVisible = false;
  bool get isPasswordVisible => _isPasswordVisible;

  bool _isPasswordConfirmationVisible = false;
  bool get isPasswordConfirmationVisible => _isPasswordConfirmationVisible;

  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }

  void togglePasswordConfirmationVisibility() {
    _isPasswordConfirmationVisible = !_isPasswordConfirmationVisible;
    notifyListeners();
  }

  void saveNewPassword() {
    final isFormNotValid = !formKey.currentState!.validate();
    if (isFormNotValid) {
      return;
    }

    //TODO: Implement password confirmation logic
  }

  String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  String? validatePasswordConfirmation(String? value) {
    if (value!.isEmpty) {
      return 'Password confirmation is required';
    }
    if (value != newPasswordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }
}
