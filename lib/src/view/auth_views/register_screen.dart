import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var companynameController=TextEditingController();
  var fullnameController=TextEditingController();
  var emaiController=TextEditingController();
  var mobilenumberController=TextEditingController();
  var dateofbirthController=TextEditingController();
  var adharController=TextEditingController();
  var passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:ListView(physics: BouncingScrollPhysics(),
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center,
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
                Text('Register New Account',
                textAlign: TextAlign.center,
                style: primaryFontsemiBold.copyWith(
                  fontSize: 22,
                  color: yblue,

                ),),
                ysizedbox20,
                Text('Registered Account means any Account \nyou have set up to transfer money to through \nOnline Services.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.7

                ),),
                  ysizedbox40,
           Container(
            height: 52,
            width: 290,
            
            child: TextField(
              controller: companynameController,
            decoration: InputDecoration(
              labelText: 'Company Name',
              border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(5)
              ),
               focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color:ygrey))
            ),),
           ),ysizedbox20,
               Container(
            height: 52,
            width: 290,
            
            child: TextField(
              controller:fullnameController,
            decoration: InputDecoration(
              labelText: 'Full Name',
              border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(5)
              ),
               focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color:ygrey))
            ),),
           ),
           ysizedbox20,
               Container(
            height: 52,
            width: 290,
            
            child: TextField(
              controller: emaiController,
            decoration: InputDecoration(
              labelText: 'Email Address',
              border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(5)
              ),
               focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color:ygrey))
            ),),
           ),
           ysizedbox20,
               Container(
            height: 52,
            width: 290,
            
            child: TextField(
              controller: dateofbirthController,
            decoration: InputDecoration(
              labelText: 'Date Of Birth',
              border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(5)
              ),
               focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color:ygrey))
            ),),
           ),
           ysizedbox20,
               Container(
            height: 52,
            width: 290,
            
            child: TextField(
              controller: adharController,
            decoration: InputDecoration(
              labelText:'Aadhar Card',
              border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(5)
              ),
               focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color:ygrey))
            ),),
           ),
           ysizedbox20,
               Container(
            height: 52,
            width: 290,
            
            child: TextField(
              controller: passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(5)
              ),
               focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color:ygrey))
            ),),
           ),
           ysizedbox20,
           Padding(
             padding: const EdgeInsets.only(left: 35),
             child: Row(
               children: [
                 Text('Have a Referral Code?',
                 style: TextStyle(
                  color: yindigo
                 ),),
               ],
             ),
           ),
            ysizedbox40,
            ElevatedButton(
            
            style: ElevatedButton.styleFrom(
              minimumSize: Size(290, 50),
              backgroundColor: yindigo,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )
            ),
            onPressed: (){
              Navigator.of(context).pushNamed( '/registeredscreen');
            }, 
           child:Text('Register Account',
           style: TextStyle(
            fontSize: 17
           ),)),
           ysizedbox20,
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('or',
              style: TextStyle(
                fontSize: 16
              ),),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed(   '/siginhome');
                },
                child: Text(' Sign in',style: TextStyle(
                  fontSize: 16,
                  color: yindigo
                ),),
              ),
              Text(' with your account',
              style: TextStyle(
                fontSize: 15
              ),)
            ],
           ),
           ysizedbox40,
              ],
            ),

          ],
        )),
    );
  }
}