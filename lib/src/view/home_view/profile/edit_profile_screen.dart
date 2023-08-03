import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/models/profileupdate_model.dart';
import '../../../controller/profile_controller/profileapi_controller.dart';
import 'package:date_format/date_format.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  var usernameController = TextEditingController();
  var mobilenumberController = TextEditingController();
  var emailController = TextEditingController();
  var addresController = TextEditingController();
  var dofbirthController = TextEditingController();
   var userController = TextEditingController();
   var aadharController = TextEditingController();
   var  profileapiController =Get.find<ProfileApiController>();
   @override
   void initState() {
     super.initState();
     setDefault();
   }

  setDefault()async{
      await profileapiController.getprofile();
      usernameController.text = profileapiController.profileData.first.name;
      mobilenumberController.text = profileapiController.profileData.first.mobile;
      emailController.text = profileapiController.profileData.first.email;
      addresController.text = profileapiController.profileData.first.companyName;
      aadharController.text = profileapiController.profileData.first.aadharNo;
      userController.text = profileapiController.profileData.first.id.toString();
      dofbirthController.text = formatDate(profileapiController.profileData.first.dateOfBirth, [
        yyyy,'-',mm,'-',dd
      ]);
  }
    DateTime selectedDate = DateTime.now();
    Future<void>_selectedDate(BuildContext context)async{
      final DateTime?picked=await showDatePicker(
        context: context, 
        initialDate: selectedDate, 
        firstDate: DateTime(2015,8), 
        lastDate: DateTime(2101));
      if(picked!=null&&picked!=selectedDate){
        setState(() {
          selectedDate=picked;
          dofbirthController.text='${selectedDate.year}-${selectedDate.month}-${selectedDate.day}';
        });
      }

    }

  // DateTime selectedDate = DateTime.now();
  // Future<void>_selectedDate(BuildContext context)async{
  //   final DateTime? picked = await showDatePicker(
  //     context: context, 
  //     initialDate: selectedDate, 
  //     firstDate: DateTime(2015,8), 
  //     lastDate: DateTime(2101));
  //     if(picked !=null&&picked!=selectedDate){
  //       setState(() {
  //         selectedDate=picked;
  //         dofbirthController.text='${selectedDate.year}-${selectedDate.month}-${selectedDate.day}';
  //       });
  //     }
  // }
   final _formkey = GlobalKey<FormState>(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yindigo,
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              
                  Column(
                    children: [
                      ysizedbox20,
                       Padding(
                         padding: const EdgeInsets.only(left: 20,right: 20),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed('/bottumnavbar');
                              },
                              child: Image.asset('assets/icons/backarrow.png')),
                         Text('Profile Edit',
                         style: primaryFontmedium.copyWith(
                          fontSize: 25,
                          color: ywhite
                         ),),
                         Container()
                          ],
                         ),
                       )
                    ],
                  ),
                  ysizedbox40,
                  ysizedbox40,
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color:ywhite,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)
                          )
                        ),
                        child: Column(
                          children: [
                            ysizedbox20,
                            Stack(
                              children: [
                               Image.asset('assets/images/editprofileimgae.png'),
        
                               Positioned(
                                top: 120,
                                left: 110,
                                child: Image.asset('assets/icons/cameraicon.png',
                               ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,),
                              child: Text('Replace Photo',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: yblue
                              ),),
                            ),
                             Padding(
                              padding: const EdgeInsets.only(left: 20,right: 30,top: 40),
                              child: Container(
                                height: 64,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: ywhite,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: TextFormField(
                                  validator: (value) {
                                    if(value!.isEmpty){
                                      return 'Company name can"t be Empty';
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                  controller: addresController,
                                  decoration: InputDecoration(
                                      prefixIcon: Image.asset('assets/icons/addressicon.png'),
                                    hintText: 'Company Name',
                                    hintStyle: TextStyle(
                                      fontSize: 14
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    )
                                  ),
                                  ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 30,top: 40),
                              child: Container(
                                height: 64,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: ywhite,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: TextFormField(
                                  validator: (value) {
                                    if(value!.isEmpty){
                                      return 'user name can"t be Empty';
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                  controller: usernameController,
                                  decoration: InputDecoration(
                                    prefixIcon: Image.asset('assets/icons/personicon.png'),
                                    hintText: 'User Name',
                                    hintStyle: TextStyle(
                                      fontSize: 14
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    )
                                  ),
                                  ),
                              ),
                            ),
                               Padding(
                              padding: const EdgeInsets.only(left: 20,right: 30,top: 40),
                              child: Container(
                                height: 64,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: ywhite,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: TextFormField(
                                  readOnly: true,
                                  validator: (value) {
                                    if(value!.isEmpty){
                                      return 'mobile number can"t be Empty';
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                  controller: mobilenumberController,
                                  decoration: InputDecoration(
                                    prefixIcon: Image.asset('assets/icons/phoneicon.png'),
                                    hintText: 'Mobile Nmber',
                                    hintStyle: TextStyle(
                                      fontSize: 14
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    )
                                  ),
                                  ),
                              ),
                            ),
                              Padding(
                              padding: const EdgeInsets.only(left: 20,right: 30,top: 40),
                              child: Container(
                                height: 64,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: ywhite,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: TextFormField(
                                  readOnly: true,
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'email id can"t be Empty';
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                  controller: emailController,
                                  decoration: InputDecoration(
                                    prefixIcon: Image.asset('assets/icons/emailicon.png'),
                                    hintText: 'Email Id',
                                    hintStyle: TextStyle(
                                      fontSize: 14
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    )
                                  ),
                                  ),
                              ),
                            ),
                             Padding(
                              padding: const EdgeInsets.only(left: 20,right: 30,top: 40),
                              child: Container(
                                height: 64,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: ywhite,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: TextFormField(
                                  validator: (value) {
                                    if(value!.isEmpty){
                                      return 'date of birth it can"t be Empty';
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                  controller: dofbirthController,
                                  decoration: InputDecoration(
                                  suffixIcon: IconButton(onPressed: (){
                                    _selectedDate(context);
                                  }, 
                                  icon: Icon(Icons.date_range)),
                                    hintText: 'Date Of Birth',
                                    hintStyle: TextStyle(
                                      fontSize: 14
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    )
                                  ),
                                  ),
                              ),
                            ),
                             Padding(
                              padding: const EdgeInsets.only(left: 20,right: 30,top: 40),
                              child: Container(
                                height: 64,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: ywhite,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: TextFormField(
                                  validator: (value) {
                                    if(value!.isEmpty){
                                      return 'date of birth it can"t be Empty';
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                  controller: userController,
                                  decoration: InputDecoration(
                                  
                                    hintText: 'User Id',
                                    hintStyle: TextStyle(
                                      fontSize: 14
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    )
                                  ),
                                  ),
                              ),
                            ),
                             Padding(
                              padding: const EdgeInsets.only(left: 20,right: 30,top: 40),
                              child: Container(
                                height: 64,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: ywhite,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: TextFormField(
                                  validator: (value) {
                                    if(value!.isEmpty){
                                      return 'date of birth it can"t be Empty';
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                  controller: aadharController,
                                  decoration: InputDecoration(
                                  
                                    hintText: 'Aadhar Number',
                                    hintStyle: TextStyle(
                                      fontSize: 14
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    )
                                  ),
                                  ),
                              ),
                            ),
                            ysizedbox30,
                               Padding(
                                 padding: const EdgeInsets.only(left: 20,right: 20),
                                 child: InkWell(
                                  onTap: (){
                                    if(_formkey.currentState!.validate()){
                                      
                                    }  
                                    ProfileUpdateModel profileUpdateModel =
                                    ProfileUpdateModel(
                                      aadhar_no: aadharController.text,
                                      user_id: userController.text,
                                      companyName:addresController.text ,
                                    userName: usernameController.text,
                                    email: emailController.text,
                                    dateOfBirth: dofbirthController.text,
                                    mobilenumber: mobilenumberController.text);
                                  profileapiController.profileUpdate(
                                    profileUpdateModel:profileUpdateModel );
                                  },
                                   child: Container(
                                    height: 60,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: yindigo,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(
                                      child: Text('Save',
                                      style: TextStyle(
                                        color: ywhite,
                                        fontSize: 18
                                      ),),
                                    ),
                                   ),
                                 ),
                               ),
                              ysizedbox40,
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}