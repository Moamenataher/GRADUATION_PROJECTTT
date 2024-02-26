class LoginResponseModel {
  final String token;
  final String error;

  const LoginResponseModel({
    required this.token,
    required this.error,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      token: json["token"] ?? "",
      error: json["error"] ?? "",
    );
  }
}
