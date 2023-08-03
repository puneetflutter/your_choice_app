import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

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

  var _formKey = GlobalKey<FormState>();

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

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
                    decoration: InputDecoration(
                        labelText: 'Full Name',
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
                    controller: emaiController,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r'\s')),
                    ],
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email can't be Empty";
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
                Container(
                  height: 52,
                  width: size.width - 60,
                  child: TextField(
                    controller: mobilenumberController,
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
                            borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: ygrey))),
                  ),
                ),
                ysizedbox20,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: dateofbirthController,
                    readOnly: true,
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
                            borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: ygrey))),
                  ),
                ),
                ysizedbox20,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: adharController,
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
                            borderSide: BorderSide(width: 1, color: ygrey))),
                  ),
                ),
                ysizedbox20,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password can't be Empty";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Password',
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
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Confirm Password can't be Empty";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Confirm Password',
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
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(290, 50),
                        backgroundColor: yindigo,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context)
                            .pushReplacementNamed('/registeredscreen');
                      }
                    },
                    child: const Text(
                      'Register Account',
                      style: TextStyle(fontSize: 17),
                    )),
                ysizedbox20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
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
                    Text(
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
