import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class PasswordSucessScreen extends StatefulWidget {
  const PasswordSucessScreen({super.key});

  @override
  State<PasswordSucessScreen> createState() => _PasswordSucessScreenState();
}

class _PasswordSucessScreenState extends State<PasswordSucessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
          Center(child: Image.asset('assets/images/passwordsucessimage.png')),
          ysizedbox10,
          Text('Password change successful',
          style: TextStyle(
            fontSize: 18
          ),),
               ysizedbox40,
              Padding(
                padding: const EdgeInsets.only(top: 140),
                child: ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(290, 50),
                  backgroundColor: yindigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
                onPressed: (){
                 
                  Navigator.of(context).pushReplacementNamed('/registerscreen');
                }, 
                           child:Text('Done',
                           style: TextStyle(
                fontSize: 17
                           ),)),
              ),
             ysizedbox20,
        ],
      )),
    );
  }
}