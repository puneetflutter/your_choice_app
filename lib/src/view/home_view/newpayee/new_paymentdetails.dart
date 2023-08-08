import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';
import 'package:your_choice_app/src/models/add_new_model.dart';

import '../../../constants/app_colors.dart';
import '../../../controller/pay_controller/add_newpay_controller.dart';
import '../../../controller/sigin_controller.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  final addnewpayController = Get.find<payController>();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ywhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ywhite,
        leading:  GestureDetector(
                        onTap: (){
                       Navigator.of(context).pushNamed(  '/newpayee');
                       },
                      child: Image.asset('assets/icons/backarrow.png',color: yblue,)),
                      title: Text('New Payee Add',
                      style: primaryFontsemiBold.copyWith(
                        color: yblue,
                        fontSize: 20
                      ),),
                      centerTitle: true,
      ),
      body: SafeArea(
        child:ListView(
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  
                     Padding(
                       padding: const EdgeInsets.only(left: 25,right: 25,top: 30),
                       child: TextFormField(
                         autovalidateMode: AutovalidateMode.always,
                        validator: (value) {
                          if(value!.isEmpty){
                          return 'mobile number must be 10';
                          }
                        },
                        controller: mobilenumberController,
                        keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  LengthLimitingTextInputFormatter(10),
                                      FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]'),
                                      ),
                                      FilteringTextInputFormatter.deny(
                                        RegExp(
                                            r'^0+'), //users can't type 0 at 1st position
                                      ),
                                      FilteringTextInputFormatter.deny(
                                        RegExp(
                                            r'^1+'), //users can't type 0 at 1st position
                                      ),
                                      FilteringTextInputFormatter.deny(
                                        RegExp(
                                            r'^2+'), //users can't type 0 at 1st position
                                      ),
                                      FilteringTextInputFormatter.deny(
                                        RegExp(
                                            r'^3+'), //users can't type 0 at 1st position
                                      ),
                                      FilteringTextInputFormatter.deny(
                                        RegExp(
                                            r'^4+'), //users can't type 0 at 1st position
                                      ),
                                      FilteringTextInputFormatter.deny(
                                        RegExp(
                                            r'^5+'), //users can't type 0 at 1st position
                                      ),
                                    ],
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
                       child: TextFormField(
                         autovalidateMode: AutovalidateMode.always,
                        validator: (value) {
                          if(value!.isEmpty){
                          return 'bank name must be requierd';
                          }
                          else{
                            return null;
                          }
                        },
                      
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
                       child: TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        validator: (value) {
                          if(value!.isEmpty){
                          return 'Account number must be required';
                          }
                          else{
                            return null;
                          }
                        },
                        controller: accountnumberController,
                        inputFormatters: <TextInputFormatter>[
                                  LengthLimitingTextInputFormatter(16),
                                      FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]'),
                                      ),
                                   
                                    ],
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
                       child: TextFormField(
                         autovalidateMode: AutovalidateMode.always,
                         validator: (value) {
                          if(value!.isEmpty){
                          return 'ifsc code must be required';
                          }
                          else{
                            return null;
                          }
                        },
                        textCapitalization: TextCapitalization.words,
                        controller: ifscCodeController,
                        inputFormatters: <TextInputFormatter>[
                                  LengthLimitingTextInputFormatter(11),
                               
                                    ],
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
                       child: TextFormField(
                         autovalidateMode: AutovalidateMode.always,
                        validator: (value) {
                          if(value!.isEmpty){
                              return 'Account holder name must be required';
                          }
                          else{
                            return null;
                          }
                        
                        },
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
                          if(_formkey.currentState!.validate()){
                                   AddnewModel addnewModel  = AddnewModel(
                        accountnumber: accountnumberController.text, 
                        bankifsccode: ifscCodeController.text, 
                        bankname:banknameController.text, 
                        mobilenumber: mobilenumberController.text, 
                        name: holdernameController.text);
                          addnewpayController.addnewpay(addnewModel:addnewModel );
                          Navigator.of(context).pushNamed('/newpayee');
                          }
                          
                    
                          
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
              ),
            ),
          ],
        ) ),
    );
  }
}