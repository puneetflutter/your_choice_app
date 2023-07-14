import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

class PasswordCreateScreen extends StatefulWidget {
  const PasswordCreateScreen({super.key});

  @override
  State<PasswordCreateScreen> createState() => _PasswordCreateScreenState();
}

class _PasswordCreateScreenState extends State<PasswordCreateScreen> {
  var passwordController=TextEditingController();
  var confirmpasswordController=TextEditingController();
  bool password=true;
  bool conpassword=true;
 final formKey = GlobalKey<FormState>(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
      child: ListView(
        children: [
          Form(
            key: formKey,
            child: Column(
              children: [
                   ysizedbox10,
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                    child: Row(
                      children: [
                        IconButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        }, 
                      icon: Icon(Icons.arrow_back_ios)),
                      ],
                    ),
                ),
              ),
            ysizedbox40,
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Image.asset('assets/images/passwordcreateimage.png'),
            ),
            ysizedbox30,
            Text('Password Create',
            style: primaryFontsemiBold.copyWith(
              fontSize: 25,
              color: yblue
            ),
            textAlign: TextAlign.center,),
            ysizedbox10,
            Text('A password reset is for when you forget your \npassword. A password change is for when \nyou remember the old password.',
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.5
            ),),ysizedbox40,
             Container(
                  height: 52,
                  width: 290,
                  
                  child: TextFormField(
                    
                    validator: (value) {
                    if(value!.isEmpty || !RegExp('>8').hasMatch(value)){
                              //allow upper and lower case alphabets and space
                              return "8 symbls at least";
                          }else{
                             return null;
                          }

                    },
                    controller: passwordController,
                  decoration: InputDecoration(
                  
                    labelText: 'Enter New Password',
                    border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(5)
                    ),
                     focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color:yindigo)),
               suffixIcon: IconButton(onPressed: (){
                                setState(() {
                                  password=!password;
                                });
                              },
                              
                               icon: password?Icon(Icons.visibility,
                               color: ygrey,):Icon(Icons.visibility_off_outlined,color: ygrey,)),
                  ),),
                  
                 ),
               
                 ysizedbox20,
                  Container(
                  height: 52,
                  width: 290,
                  
                  child: TextFormField(
                    validator: (value) {
                    if(value!.isEmpty || !RegExp('<8,password doesnot match').hasMatch(value)){
                              //allow upper and lower case alphabets and space
                              return "incorrect password";
                          }else{
                             return null;
                          }

                    },
                    controller: confirmpasswordController,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(5)
                    ),
                     focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color:yindigo)),
               suffixIcon: IconButton(onPressed: (){
                                setState(() {
                                  conpassword=!conpassword;
                                });
                              },
                              
                               icon: conpassword?Icon(Icons.visibility,
                               color: ygrey,):Icon(Icons.visibility_off_outlined,color: ygrey,)),
                  ),),
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
                if(formKey.currentState!.validate()){
                  
                }
                Navigator.of(context).pushReplacementNamed('/passwordsucess');
              }, 
             child:Text('Submit',
             style: TextStyle(
              fontSize: 17
             ),)),
             ysizedbox20,
              ],
            ),
          ),
        ],
      )),
    );
  }
}