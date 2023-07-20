import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

import '../../../constants/app_colors.dart';

class NewPaymentDetailScreen extends StatefulWidget {
  const NewPaymentDetailScreen({super.key});

  @override
  State<NewPaymentDetailScreen> createState() => _NewPaymentDetailScreenState();
}

class _NewPaymentDetailScreenState extends State<NewPaymentDetailScreen> {
  var mobilenumberController=TextEditingController();
  var banknameController=TextEditingController();
  var accountnumberController=TextEditingController();
  var ifscCodeController=TextEditingController();
  var holdernameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(
          children: [
            ysizedbox30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                   GestureDetector(
                      onTap: (){
                     Navigator.of(context).pushReplacementNamed(  '/newpayee');
                     },
                    child: Image.asset('assets/icons/backarrow.png',color: yblue,)),

                    Text('New Payee Add',
                    style: primaryFontsemiBold.copyWith(
                      color: yblue,
                      fontSize: 20
                    ),),
                    Container()
              ],
            ),
               ysizedbox40,
               ysizedbox30,
               Padding(
                 padding: const EdgeInsets.only(left: 25,right: 25),
                 child: TextField(
                  controller: mobilenumberController,
                  decoration: InputDecoration(
                 
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: yblue
                    ),
                    borderRadius:BorderRadius.circular(8)
                  ),
                    hintText: 'Mobile Number',
                    labelText: 'Mobile Number',
                    labelStyle: TextStyle(
                      color:yblue
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: yblue
                      ),
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                 ),
               ),
               ysizedbox30,
                Padding(
                 padding: const EdgeInsets.only(left: 25,right: 25),
                 child: TextField(
                  controller: banknameController,
                  decoration: InputDecoration(
                 
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: yblue
                    ),
                    borderRadius:BorderRadius.circular(8)
                  ),
                    hintText: 'Select Bank Name',
                    labelText: 'Select Bank Name',
                    labelStyle: TextStyle(
                      color:yblue
                    ),
                    suffixIcon: IconButton(onPressed: (){}, 
                    icon: Icon(Icons.expand_more)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: yblue
                      ),
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                 ),
               ),
               ysizedbox30,
                Padding(
                 padding: const EdgeInsets.only(left: 25,right: 25),
                 child: TextField(
                  controller: accountnumberController,
                  decoration: InputDecoration(
                 
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: yblue
                    ),
                    borderRadius:BorderRadius.circular(8)
                  ),
                    hintText: 'Account Number',
                    labelText: 'Account Number',
                    labelStyle: TextStyle(
                      color:yblue
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: yblue
                      ),
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                 ),
               ),
               ysizedbox30,
                Padding(
                 padding: const EdgeInsets.only(left: 25,right: 25),
                 child: TextField(
                  controller: ifscCodeController,
                  decoration: InputDecoration(
                 
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: yblue
                    ),
                    borderRadius:BorderRadius.circular(8)
                  ),
                    hintText: 'Bank IFSC Code',
                    labelText: 'Bank IFSC Code',
                    labelStyle: TextStyle(
                      color:yblue
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: yblue
                      ),
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                 ),
               ),
               ysizedbox30,
                Padding(
                 padding: const EdgeInsets.only(left: 25,right: 25),
                 child: TextField(
                  controller: holdernameController,
                  decoration: InputDecoration(
                 
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: yblue
                    ),
                    borderRadius:BorderRadius.circular(8)
                  ),
                    hintText: 'Ac Holder Name',
                    labelText: 'Ac Holder Name',
                    labelStyle: TextStyle(
                      color:yblue
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: yblue
                      ),
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                 ),
               ),
               ysizedbox40,
               ysizedbox20,
               Container(
                height: 37,
                width: 237,
                decoration: BoxDecoration(
                  color:yblueversion,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Text('GET PAYEE NAME',
                  style: TextStyle(
                    color: ywhite,
                    fontSize: 18
                  ),),
                ),
               ),
               ysizedbox40,
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed('/newpayee');
                  },
                  child: Container(
                  height: 58,
                  width:310,
                  decoration: BoxDecoration(
                    color:yindigo,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: Text('SUBMIT',
                    style: primaryFontsemiBold.copyWith(
                      color: ywhite,
                      fontSize: 18
                    ),),
                  ),
                               ),
                ),
          ],
        ) ),
    );
  }
}