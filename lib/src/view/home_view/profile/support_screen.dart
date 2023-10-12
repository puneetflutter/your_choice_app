// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:your_choice_app/src/constants/app_colors.dart';

// import '../../../constants/app_fonts.dart';
// import '../../../controller/profile_controller/profileapi_controller.dart';


// class SupportScreen extends StatefulWidget {
//   const SupportScreen({super.key});

//   @override
//   State<SupportScreen> createState() => _SupportScreenState();
// }

// class _SupportScreenState extends State<SupportScreen> {

//   var nameController = TextEditingController();
//   var mobilenumberController = TextEditingController();
//   var emailController = TextEditingController();
//   var messageController = TextEditingController();
//   final profileapiController= Get.find<ProfileApiController>();
//   final _formkey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: yindigo,
//       body: SafeArea(
//         child:Form(
//           key: _formkey,
//           child: ListView(
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     children: [
//                           Padding(
//                                  padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
//                                  child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     InkWell(
//                                       onTap: (){
//                                         Get.back();
//                                       },
//                                       child: Image.asset('assets/icons/backarrow.png')),
//                                  Text('Support',
//                                  style: primaryFontmedium.copyWith(
//                                   fontSize: 25,
//                                   color: ywhite
//                                  ),),
//                                  Image.asset('assets/images/homeprofileimage.png')
//                                   ],
//                                  ),
//                                )
//                     ],
//                   ),
//                   ysizedbox40,
//                   Column(
//                     children: [
//                       Container(
                    
//                         width: MediaQuery.of(context).size.width,
//                         decoration: BoxDecoration(
//                           color: ywhite,
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(10),
//                             topRight: Radius.circular(10)
//                           )
//                         ),
//                         child: Column(children: [
//                           ysizedbox40,
//                           Text('How can we suppot you?',
//                           style: primaryFontsemiBold.copyWith(
//                             fontSize: 19
//                           ),),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 15),
//                             child: Text('It looks like you are experiencing problems \nwith our sign up process. We are here to \nsupport so please get in touch with us',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: 17,
//                               height: 1.3
//                             ),),
//                           ),
//                           ysizedbox40,
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                                CircleAvatar(
//                                 radius: 40,
//                                 backgroundColor: yblue,
//                                 child: Image.asset('assets/images/supportsmsimage.png',
//                                  height: 30,
//                                 fit: BoxFit.fitHeight,
//                                 ),
//                               ),
//                               CircleAvatar(
//                                 radius: 40,
//                                     backgroundColor: yblue,
//                                 child: Image.asset('assets/images/supportemailimage.png',
//                                 height: 30,
//                                 fit: BoxFit.fitHeight,
//                               ),
//                               ),
                             
//                             ],
//                           ),
//                           ysizedbox10,
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Text('Chat to US',
//                               style: TextStyle(
//                                 fontSize: 17
//                               ),),
//                               Text('Email',
//                               style: TextStyle(
//                                 fontSize: 17
//                               ),)
//                             ],
//                           ),
//                           ysizedbox40,
//                           ysizedbox20,
//                           Padding(
//                             padding: const EdgeInsets.only(left: 25,right: 25),
//                             child: TextFormField(
//                                autovalidateMode:AutovalidateMode.onUserInteraction ,
//                               textAlign: TextAlign.start,
//                               validator: (value) {
//                                 if(value!.isEmpty){
//                                   return 'name can"t be Empty';
//                                 }
//                                 else{
//                                   return null;
//                                 }
//                               },
//                               keyboardType: TextInputType.name,
//                               controller: nameController,
//                               decoration: InputDecoration(
//                                 contentPadding: EdgeInsets.only(top: 30,left: 10),
//                                 hintText: 'Name',
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(5)
//                                 )
//                               ),
                              
//                               ),
//                           ),
//                            ysizedbox20,
//                           Padding(
//                             padding: const EdgeInsets.only(left: 25,right: 25),
//                             child: TextFormField(
//                                autovalidateMode:AutovalidateMode.onUserInteraction ,
//                               textAlign: TextAlign.start,  
//                               validator: (value) {
//                                 if(value!.isEmpty){
//                                   return 'Mobile number can"t be Empty';
//                                 }
//                                 if (value.length < 10) {
//                                  return 'mobile number must be 10 digits';
//                                     }
                                  
//                                  // return null if the text is valid
//                                   return null;
                                
//                               },
//                               keyboardType: TextInputType.phone,
//                               controller: mobilenumberController,
//                               decoration: InputDecoration(
//                                 contentPadding: EdgeInsets.only(
//                                   top: 30,left: 10
//                                 ),
//                                 hintText: 'Mobile Number',
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(5)  
//                                 )
//                               ),
                              
//                               ),
//                           ),
//                              ysizedbox20,
//                           Padding(
//                             padding: const EdgeInsets.only(left: 25,right: 25),
//                             child: TextFormField(
//                               autovalidateMode:AutovalidateMode.onUserInteraction ,
//                               textAlign: TextAlign.start,
//                               validator: (value) {
//                                 if(value!.isEmpty){
//                                   return 'email id can"t be Empty';
//                                 }
//                                 else{
//                                   return null;
//                                 }
//                               },
//                             keyboardType: TextInputType.emailAddress,
//                               controller: emailController,
//                               decoration: InputDecoration(
//                                 contentPadding: EdgeInsets.only(
//                                   top: 30,left: 10
//                                 ),
//                                 hintText: 'Email ID',
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(5)
//                                 )
//                               ),
                              
//                               ),
//                           ),
//                                   ysizedbox20,
//                           Padding(
//                             padding: const EdgeInsets.only(left: 25,right: 25),
//                             child: TextFormField(
//                                autovalidateMode:AutovalidateMode.onUserInteraction ,
//                               textAlign: TextAlign.start,
//                               validator: (value) {
//                                 if(value!.isEmpty){
//                                   return 'message can"t be Empty';
//                                 }
//                                 else{
//                                   return null;
//                                 }
//                               },
//                               maxLines: 2,
//                               controller: messageController,
//                               decoration: InputDecoration(
//                                 contentPadding: EdgeInsets.only(
//                                   top: 50,left: 10
//                                 ),
//                                 hintText: 'Messages',
                                
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(5)
//                                 )
//                               ),
                              
//                               ),
//                           ),
//                           ysizedbox40,
//                           InkWell(
//                             onTap: (){
//                               // Navigator.of(context).pushNamed( '/bottumnavbar');
//                               _formkey.currentState!.validate();
//                                 if(nameController.text.isEmpty&&emailController.text.isEmpty&&messageController.text.isEmpty&&mobilenumberController.text.isEmpty){
//                                   return  null;
//                                 }
//                                 else{
//                                   profileapiController.createsupport(
//                                 name: nameController.text, 
//                                 email: emailController.text, 
//                                 message: messageController.text);
//                                 }
                               
//                             },
//                             child: Container(
//                               height: 50,
//                               width: MediaQuery.of(context).size.width*0.85,
//                               decoration: BoxDecoration(
//                                 color: yindigo,
//                                 borderRadius: BorderRadius.circular(10)
//                               ),
//                               child: Center(child: Text('Send',
//                               style: primaryFontsemiBold.copyWith(
//                                 color: ywhite,
//                                 fontSize: 20
//                               ),)),
//                             ),
//                           ),
//                           ysizedbox30,
//                         ]),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ],
//           ),
//         )),
//     );
//   }
// }