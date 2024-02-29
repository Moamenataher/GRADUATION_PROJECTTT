import 'package:equatable/equatable.dart';

class NewPasswordParams extends Equatable {
  final String password;
  final String confirmPassword;

  const NewPasswordParams(
    this.password,
    this.confirmPassword,
  );

  @override
  List<Object> get props => [
        password,
        confirmPassword,
      ];

  Map<String, dynamic> toJson() {
    return {
      'password': password,
      'confirmPassword': confirmPassword,
    };
  }
}
