class ForgotPasswordResponseModel {
  String message;
  String status;

  ForgotPasswordResponseModel(
    this.message,
    this.status,
  );

  factory ForgotPasswordResponseModel.fromJson(Map<String, dynamic> json) {
    return ForgotPasswordResponseModel(
      json['message'] as String,
      json['status'] as String,
    );
  }
}
