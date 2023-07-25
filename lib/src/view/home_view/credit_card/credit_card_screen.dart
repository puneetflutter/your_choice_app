import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';

import '../../../constants/app_fonts.dart';

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({super.key});

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  var usernameController=TextEditingController();
  var creditcardController=TextEditingController();
  var creditcardnumberController=TextEditingController();
  var bankController=TextEditingController();
  var cardduedateController=TextEditingController();
    @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(
        child: ListView(
          children: [
            Column(
            
              children: [
                 Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Row(
                    children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).pushNamed('/home');
                    }, 
                    icon: Icon(Icons.arrow_back,
                    color: yblue,)),
                      Padding(
                 padding: const EdgeInsets.only(left: 30),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('Credit Card Payment',
                     style: primaryFontsemiBold.copyWith(
                       color:yblue,
                       fontSize: 20,
                       ),)
                   ],
                 ),
                      )
                    ],
                  ),
                ),
              ),
              ysizedbox40,
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: 'User Name',
                    labelText: 'User Name',
                    labelStyle: TextStyle(
                      color: ygrey
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ygrey
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      
                      borderSide: BorderSide(
                        color: ygrey
                      )
                    )
                  ),
                ),
              ),
              ysizedbox30,
               Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: 'Select Credit Cards',
                    labelText: 'Select Credit Cards',
                    labelStyle: TextStyle(
                      color: ygrey
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ygrey
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      
                      borderSide: BorderSide(
                        color: ygrey
                      )
                    )
                  ),
                ),
              ),
               ysizedbox30,
               Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: 'xxxxxxxxxxxxxxx',
                    labelText: 'Credit Card Number',
                    labelStyle: TextStyle(
                      color: ygrey
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ygrey
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      
                      borderSide: BorderSide(
                        color: ygrey
                      )
                    )
                  ),
                ),
              ),
               ysizedbox30,
               Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: 'Bank Name',
                    labelText: 'Bank Name',
                    labelStyle: TextStyle(
                      color: ygrey
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ygrey
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      
                      borderSide: BorderSide(
                        color: ygrey
                      )
                    )
                  ),
                ),
              ),
               ysizedbox30,
               Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: 'Card Due Date',
                    labelText: 'Card Due Date',
                    labelStyle: TextStyle(
                      color: ygrey
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ygrey
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      
                      borderSide: BorderSide(
                        color: ygrey
                      )
                    )
                  ),
                ),
              ),
                                ysizedbox40,
                                ysizedbox30,
             ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                minimumSize: Size(310, 50),
                backgroundColor: yindigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              onPressed: (){
                   showDialog(context: context, 
                   builder:(context){
                    return AlertDialog(
                      actions: [
                        Container(
                          height: 370,
                          child: Center(
                            child: Column(
                              children: [
                                ysizedbox40,
                                Image.asset('assets/images/checkimage.png'),
                                ysizedbox10,
                                Text('Credit Card Details \nSuccessful registration',
                                style: primaryFontmedium.copyWith(
                                  fontSize: 20,
                                  height: 1.5,
                                  color: yblue
                                ),
                                textAlign: TextAlign.center,),
                                ysizedbox40,
                                ysizedbox20,
                                    ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                minimumSize: Size(250, 50),
                backgroundColor: yindigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              onPressed: (){
              Navigator.of(context).pushNamed( '/home');
              }, 
                       child:Text('Done',
                       style: TextStyle(
              fontSize: 17
                       ),)),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                   });
                //Navigator.of(context).pushNamed( '/transfersummery');
              }, 
             child:Text('Save',
             style: primaryFontsemiBold.copyWith(
              fontSize: 17,
              color: ywhite
             ),)),
             ysizedbox20,

              ]   
            ),
          ],
        )
        ),
    );
  }
}
