import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';
import 'package:your_choice_app/src/models/register_model.dart';

import '../../controller/sigin_controller.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var companynameController = TextEditingController();
  var fullnameController = TextEditingController();
  var emaiController = TextEditingController();
  var mobilenumberController = TextEditingController();
  var dateofbirthController = TextEditingController();
  var adharController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var _formKey = GlobalKey<FormState>();

  DateTime selectedDate = DateTime(2005);

  Future<void> _selectDate(BuildContext context) async {
    DateTime date = DateTime(2005);
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2005));
    if (picked != null && picked != selectedDate) {
      setState(
        () {
          selectedDate = picked;
          dateofbirthController.text =
              formatDate(selectedDate, [yyyy, "-", mm, "-", dd]);
        },
      );
    }
  }

  final authController = Get.find<AuthController>();

  bool isPasswordVisible = true;
  bool isConfirmPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //        ysizedbox10,
                Container(
                  child: Row(
                    children: [
                      //   IconButton(
                      //   onPressed: (){
                      //     Navigator.of(context).pop();
                      //   },
                      // icon: Icon(Icons.arrow_back_ios)),
                    ],
                  ),
                ),
                ysizedbox20,
                Image.asset('assets/images/registerimage.png'),
                ysizedbox30,
                Text(
                  'Register New Account',
                  textAlign: TextAlign.center,
                  style: primaryFontsemiBold.copyWith(
                    fontSize: 22,
                    color: yblue,
                  ),
                ),
                ysizedbox20,
                const Text(
                  'Registered Account means any Account \nyou have set up to transfer money to through \nOnline Services.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, height: 1.7),
                ),
                ysizedbox40,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: companynameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Company name can't be Empty";
                      } else {
                        return null;
                      }
                    },
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                        labelText: 'Company Name',
                        contentPadding:
                            const EdgeInsets.fromLTRB(17.0, 2.0, 17.0, 16.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: ygrey))),
                  ),
                ),
                ysizedbox20,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: fullnameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Full name can't be Empty";
                      } else {
                        return null;
                      }
                    },
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      contentPadding:
                          const EdgeInsets.fromLTRB(17.0, 2.0, 17.0, 16.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: ygrey),
                      ),
                    ),
                  ),
                ),
                ysizedbox20,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: emaiController,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r'\s')),
                    ],
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email can't be Empty";
                      } else if (value.isEmail == false) {
                        return "Enter a valid email id";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Email Address',
                        contentPadding:
                            const EdgeInsets.fromLTRB(17.0, 2.0, 17.0, 16.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: ygrey))),
                  ),
                ),
                ysizedbox20,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: mobilenumberController,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10),
                      FilteringTextInputFormatter.digitsOnly,
                      FilteringTextInputFormatter.deny(RegExp(r'\s')),
                    ],
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Mobile Number can't be Empty";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Mobile Number',
                      contentPadding:
                          const EdgeInsets.fromLTRB(17.0, 2.0, 17.0, 16.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: ygrey),
                      ),
                    ),
                  ),
                ),
                ysizedbox20,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: dateofbirthController,
                    // readOnly: true,
                    onTap: () {
                      _selectDate(context);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Date Of Birth can't be Empty";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Date Of Birth',
                      contentPadding:
                          const EdgeInsets.fromLTRB(17.0, 2.0, 17.0, 16.0),
                      suffixIcon: const Icon(Icons.date_range),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: ygrey),
                      ),
                    ),
                  ),
                ),
                ysizedbox20,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: adharController,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(12),
                      FilteringTextInputFormatter.digitsOnly,
                      FilteringTextInputFormatter.deny(RegExp(r'\s')),
                    ],
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Aadhar Card can't be Empty";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Aadhar Card',
                      contentPadding:
                          const EdgeInsets.fromLTRB(17.0, 2.0, 17.0, 16.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: ygrey),
                      ),
                    ),
                  ),
                ),
                ysizedbox20,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: isPasswordVisible,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password can't be Empty";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: isPasswordVisible
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(17.0, 2.0, 17.0, 16.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: ygrey))),
                  ),
                ),
                ysizedbox20,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: confirmPasswordController,
                    obscureText: isConfirmPasswordVisible,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Confirm Password can't be Empty";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        suffixIcon: IconButton(
                          icon: isConfirmPasswordVisible
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              isConfirmPasswordVisible =
                                  !isConfirmPasswordVisible;
                            });
                          },
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(17.0, 2.0, 17.0, 16.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: ygrey))),
                  ),
                ),
                ysizedbox20,
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Row(
                    children: [
                      Text(
                        'Have a Referral Code?',
                        style: TextStyle(color: yindigo),
                      ),
                    ],
                  ),
                ),
                ysizedbox40,
                Obx(
                  () => AnimatedContainer(
                    curve: Curves.bounceOut,
                    duration: const Duration(seconds: 2),
                    child: authController.isLoading.isTrue
                        ? Container(
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: yindigo),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            ),
                          )
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(290, 50),
                                backgroundColor: yindigo,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                if (passwordController.text ==
                                    confirmPasswordController.text) {
                                  RegisterModel registerModel = RegisterModel(
                                    name: fullnameController.text,
                                    email: emaiController.text,
                                    mobile: mobilenumberController.text,
                                    dob: dateofbirthController.text,
                                    adharno: adharController.text,
                                    password: passwordController.text,
                                    username: companynameController.text,
                                  );
                                  authController.registerUser(registerModel);
                                }
                                // Navigator.of(context)
                                //  .pushReplacementNamed('/registeredscreen');
                                else {
                                  Get.rawSnackbar(
                                    messageText: const Text(
                                      "Confirm password must match the new password.",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    backgroundColor: Colors.red,
                                  );
                                }
                              }
                            },
                            child: const Text(
                              'Register Account',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                  ),
                ),
                ysizedbox20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'or',
                      style: TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/siginhome');
                      },
                      child: Text(
                        ' Sign in',
                        style: TextStyle(fontSize: 16, color: yindigo),
                      ),
                    ),
                    const Text(
                      ' with your account',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                ysizedbox40,
              ],
            ),
          ),
        ],
      )),
    );
  }
}
