class RegisterModel {
  String companyName;
  String fullName;
  String username;
  String email;
  String mobile;
  String password;
  String passwordConfirmation;

  RegisterModel({
    required this.companyName,
    required this.fullName,
    required this.username,
    required this.email,
    required this.mobile,
    required this.password,
    required this.passwordConfirmation,
  });
}