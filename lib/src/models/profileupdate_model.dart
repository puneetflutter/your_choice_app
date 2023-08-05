

class ProfileUpdateModel {
  String companyName;
  String userName;
  dynamic mobilenumber;
  dynamic email;
  dynamic dateOfBirth;
  dynamic aadhar_no;
  dynamic user_id;

  ProfileUpdateModel({
    required this.aadhar_no,
    required this.user_id,
    required this.companyName,
    required this.dateOfBirth,
    required this.email,
    required this.mobilenumber,
    required this.userName
  });
}

