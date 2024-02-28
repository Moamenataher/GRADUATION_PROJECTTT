import 'package:flutter/material.dart';

class RegistrationProvider extends ChangeNotifier {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();

  final FocusNode nameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode phoneFocus = FocusNode();
  final FocusNode dateFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final FocusNode passwordConfirmationFocus = FocusNode();

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

  void register() {
    final formIsNotValid = !formKey.currentState!.validate();
    if (formIsNotValid) {
      return;
    }

    // TODO: Implement registration logic
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    dateController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    nameFocus.dispose();
    emailFocus.dispose();
    phoneFocus.dispose();
    dateFocus.dispose();
    passwordFocus.dispose();
    passwordConfirmationFocus.dispose();
  }
}
