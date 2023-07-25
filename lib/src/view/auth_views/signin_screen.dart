import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

import '../../controller/sigin_controller.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  bool ispasswordhide=true;
final signinController=Get.find<SiginController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Obx(() => 
ListView(physics: BouncingScrollPhysics(),
           children: [
             Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   ysizedbox10,
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                      child: Row(
                        children: [
                        //   IconButton(
                        //   onPressed: (){
                        //     Navigator.of(context).pushNamed( '/authlanding');
                        //   }, 
                        // icon: Icon(Icons.arrow_back_ios)),
                        ],
                      ),
                  ),
                ),
                ysizedbox30,
                Image.asset('assets/images/signinhomeimage.png'),
                ysizedbox20,
                Text('Sign In to Account',
                style: primaryFontbold.copyWith(
                  fontSize: 24,
                  color: yblue
                ),),
                
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text('Sign With Username or email and \n password to use your account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 15.5
                  ),),
                ),
                ysizedbox20,
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                      height: 52,
                      width: 290,
                      decoration: BoxDecoration(
                        
                      ),
                      child: TextField(
                        cursorColor: ygrey,
                        obscureText: ispasswordhide,
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText:signinController.siginIndex.value==0?'Mobile Number' :'Email Id',
                          labelStyle: TextStyle(
                            color: ygrey
                          ),
                         
                          border: OutlineInputBorder(
                      
                          ),
                      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color:ygrey))
                        ),),
                     ),
                     ysizedbox30,
                      Container(
                      height: 52,
                      width: 290,
                      decoration: BoxDecoration(
                        
                      ),
                      child: TextField(
                        cursorColor: ygrey,
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: ygrey
                          ),
                           suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              ispasswordhide=!ispasswordhide;
                            });
                          },
                          
                           icon: ispasswordhide?Icon(Icons.visibility,
                           color: ygrey,):Icon(Icons.visibility_off_outlined,color: ygrey,)),
                          border: OutlineInputBorder(
       
                          ),
                          focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color:ygrey))
                        ),),
                     ),
                   ],
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

                Navigator.of(context).pushNamed('/bottumnavbar');
              }, 
             child:Text('Sign in',
             style: TextStyle(
              fontSize: 17
             ),)),
             ysizedbox20,
              ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                minimumSize: Size(290, 50),
                backgroundColor: ypurpule,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              onPressed: (){
                    signinController.siginIndex(2);
                    signinController.update();
            
                //Navigator.of(context).pushNamed('/siginhome');
              }, 
             child:signinController.siginIndex.value==0? Text('Use Email Id',
             
             style: TextStyle(
            
              fontSize: 17
             ),): Text('Use phone number',
             
             style: TextStyle(
            
              fontSize: 17
             ),)),
             ysizedbox20,
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  Navigator.of(context).pushNamed('/forgotscreen');
                }, 
                child: Text('Forget password |',
                style: primaryFontbold.copyWith(
                  color: yblue,
                  
                ),)),
              
                TextButton(onPressed: (){
                  Navigator.of(context).pushNamed('/registerscreen');
                },
                 child: Text('Create Account'))
              ],
             ),
             ysizedbox20,
              ],
             ),
           ],
         ),
       ),
    );
  }
}