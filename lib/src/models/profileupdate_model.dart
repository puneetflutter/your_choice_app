

class ProfileUpdateModel {
  String companyName;
  String userName;
  String mobilenumber;
  String email;
  dynamic dateOfBirth;
  String aadhar_no;
  String user_id;

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

