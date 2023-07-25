import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

import '../../../controller/sigin_controller.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {

   List image=[
    'assets/images/historyimage1.png',
     'assets/images/historyimage2.png',
      'assets/images/historyimage3.png',
       'assets/images/historyimage4.png',
        'assets/images/historyimage5.png',
         'assets/images/historyimage6.png',
          'assets/images/historyimage7.png',
    ];
   List title=[
    'Payment',
    'Payment',
    'Payment',
    'Payment',
    'Payment',
    'Payment',
    'Payment'
   ];
   List subtitile=[
    'Payment from Wasim',
    'Payment from Wasim',
    'Payment from Wasim',
    'Payment from Wasim',
    'Payment from Wasim',
    'Payment from Wasim',
    'Payment from Wasim'
   ];

   List amount=[
    '₹243.54',
    '- ₹654.68',
    '- ₹654.68',
    '₹243.54',
    '- ₹654.68',
    '- ₹654.68',
    '₹243.54'
   ];
   List date=[
    'JUN 26',
    'JUN 26',
    'JUN 26',
    'JUN 26',
    'JUN 26',
    'JUN 26',
    'JUN 26'
   ];
  var dateController=TextEditingController();
 
  var modelsheetController=Get.find<SiginController>();
  @override
  Widget build(BuildContext context) {
     final navigationCOntroller=Get.find<SiginController>();
     var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: yindigo,
      body: SafeArea(

        child:ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                      children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text('History',
                                      style: TextStyle(
                                        color: ywhite,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                      ),),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 3),
                                        child: Text('Total Payment Transaction History"s',
                                        style: TextStyle(
                                          color: ywhite
                                        ),),
                                      )
                                 ],
                               ),
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                             Padding(
                               padding: const EdgeInsets.only(right: 5),
                               child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushNamed('/notification');
                            },child: Image.asset('assets/images/notificationimage.png')),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 5),
                               child: Image.asset('assets/images/homeprofileimage.png'),
                             )
                         
                            ],
                                       )
                             ],
                           ),
                         ),
                      ],
                ),
                ysizedbox40,
                Column(
                  children: [
                       Container(
                                
                        decoration: BoxDecoration(
                          color: ywhite,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)
                          )
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Recent Transaction',
                                  style: primaryFontbold.copyWith(
                                    color: yindigo,
                                    fontSize: 19
                                  ),),
                                  InkWell(
                                    onTap: (){
                                      showModalBottomSheet(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10)
                                                )
                                        ),
                                        context: context, 
                                        builder: (context){
                                          return Padding(
                                            padding: const EdgeInsets.only(left: 10,right: 10),
                                            child: Container(
                                              height: 480,
                                              decoration: BoxDecoration(
                                                color: ywhite,
                                                
                                              ),
                                              child: Obx(()=>
                                                 Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 20,left:10,right: 10),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text('Select Transaction Type',
                                                          style: TextStyle(
                                                            fontSize: 16
                                                          ),),
                                                          Image.asset('assets/images/wrongwhatsappimage.png')
                                                        ],
                                                      ),
                                                    ),
                                                    ysizedbox20,
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 10,right: 10),
                                                      child: Container(
                                                        height: 38,
                                                        decoration: BoxDecoration(
                                                          color: Color(0xffD7E4ED)
                                                        ),
                                                        child: TextField(
                                                          controller: dateController,
                                                          decoration: InputDecoration(
                                                            prefixIcon: Image.asset('assets/icons/dateimage.png'),
                                                            suffixIcon: Image.asset('assets/icons/dropdwonicon.png'),
                                                            border: OutlineInputBorder(
                                                              
                                                            )
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    ysizedbox30,
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 10,right: 10),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Container(
                                                            height: 46,
                                                            width: 160,
                                                            decoration: BoxDecoration(
                                                              color:modelsheetController.dropdrownindex.value==0 ?yblue:Color(0xffD7E4ED),
                                                              borderRadius: BorderRadius.circular(6)
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                  children: [
                                                                    Text('All Transactions',
                                                                    style: TextStyle(
                                                                      color:modelsheetController.dropdrownindex.value==0? ywhite:yblue
                                                                    ),),
                                                                    InkWell(
                                                                      onTap: (){
                                                                        modelsheetController.dropdrownindex(0);
                                                                        modelsheetController.update();
                                                                      },
                                                                      child: Image.asset('assets/icons/dropdwonicon.png',
                                                                      color:modelsheetController.dropdrownindex.value==0? ywhite:yblue),
                                                                    ),
                                                                  ],
                                                            ),
                                                          ),
                                                           Container(
                                                            height: 46,
                                                            width: 160,
                                                            decoration: BoxDecoration(
                                                                 color:modelsheetController.dropdrownindex.value==1?yblue: Color(0xffD7E4ED),
                                                              borderRadius: BorderRadius.circular(6)
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                  children: [
                                                                    Text('All Categories',
                                                                    style: TextStyle(
                                                                      color:modelsheetController.dropdrownindex.value==1? ywhite:yblue
                                                                    ),),
                                                                    InkWell(
                                                                      onTap: (){
                                                                        modelsheetController.dropdrownindex(1);
                                                                        modelsheetController.update();
                                                                      },
                                                                      child: Image.asset('assets/icons/dropdwonicon.png',
                                                                      color:modelsheetController.dropdrownindex.value==1?ywhite:yblue,
                                                                      ),
                                                                    ),
                                                                  ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    ysizedbox10,
                                                    if(modelsheetController.dropdrownindex.value==0)
                                                    Row(
                                                      children: [
                                                       Checkbox(
                                                        
                                                        value: modelsheetController.transaction.value,
                                                        onChanged: (bool?value){
                                                          setState(() {
                                                            modelsheetController.transaction(!modelsheetController.transaction.value);
                                                          });
                                                        }),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 10),
                                                          child: Text('All Transactions'),
                                                        )
                                                      ],
                                                    ),
                                                    ysizedbox10,
                                                      if(modelsheetController.dropdrownindex.value==0)
                                                     Row(
                                                      children: [
                                                       Checkbox(
                                                        
                                                        value: modelsheetController.moneyadd.value,
                                                        onChanged: (bool?value){
                                                          setState(() {
                                                            modelsheetController.moneyadd(!modelsheetController.moneyadd.value);
                                                          });
                                                        }),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 10),
                                                          child: Text('Money Received / Added'),
                                                        )
                                                      ],
                                                    ),
                                                    ysizedbox10,
                                                      if(modelsheetController.dropdrownindex.value==0)
                                                      Row(
                                                      children: [
                                                       Checkbox(
                                                        
                                                        value: modelsheetController.moneypaid.value,
                                                        onChanged: (bool?value){
                                                          setState(() {
                                                            modelsheetController.moneypaid(!modelsheetController.moneypaid.value);
                                                          });
                                                        }),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 10),
                                                          child: Text('Money Paid'),
                                                        )
                                                      ],
                                                    ),
                                                      ysizedbox10,
                                                      if(modelsheetController.dropdrownindex.value==1)
                                                      Row(
                                                      children: [
                                                       Checkbox(
                                                        
                                                        value: modelsheetController.allcategory.value,
                                                        onChanged: (bool?value){
                                                          setState(() {
                                                            modelsheetController.allcategory(!modelsheetController.allcategory.value);
                                                          });
                                                        }),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 10),
                                                          child: Text('All Categories'),
                                                        )
                                                      ],
                                                    ),
                                                    ysizedbox10,
                                                     if(modelsheetController.dropdrownindex.value==1)
                                                      Row(
                                                      children: [
                                                       Checkbox(
                                                        
                                                        value: modelsheetController.businesspay.value,
                                                        onChanged: (bool?value){
                                                          setState(() {
                                                            modelsheetController.businesspay(!modelsheetController.businesspay.value);
                                                          });
                                                        }),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 10),
                                                          child: Text('Business Pay'),
                                                        )
                                                      ],
                                                    ),
                                                     ysizedbox10,
                                                     if(modelsheetController.dropdrownindex.value==1)
                                                      Row(
                                                      children: [
                                                       Checkbox(
                                                        
                                                        value: modelsheetController.paymentlink.value,
                                                        onChanged: (bool?value){
                                                          setState(() {
                                                            modelsheetController.paymentlink(!modelsheetController.paymentlink.value);
                                                          });
                                                        }),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 10),
                                                          child: Text('Payment Link'),
                                                        )
                                                      ],
                                                    ),
                                                  
                                                    Padding(
                                                      padding: const EdgeInsets.only(bottom: 0,top: 10),
                                                      child: InkWell(
                                                        onTap: (){
                                                          Navigator.of(context).pushReplacementNamed( '/history');
                                                        },
                                                        child: Container(
                                                             height: 53,
                                                             width: 300,
                                                             decoration: BoxDecoration(
                                                              color: yindigo,
                                                              borderRadius: BorderRadius.circular(10)       
                                                             ),
                                                             child: Center(
                                                              child: Text('Apply',
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                color: ywhite
                                                              ),
                                                              ),
                                                             ),
                                                        ),
                                                      ),
                                                    ),
                                                    
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        });
                                    },
                                    child: Image.asset('assets/images/historyicon.png'))
                            
                                ],
                              ),
                            ),
                             ysizedbox20,
                               ListView.builder(
                        shrinkWrap: true,
                        itemCount: image.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: (){
                             // Navigator.of(context).pushReplacementNamed( '/dthdetail');
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            
                              children: [
                                
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                    Image.asset(image[index]),
                                   
                                    Padding(
                                      padding: const EdgeInsets.only(right: 40),
                                      child: Column(

                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(title[index],
                                          style: primaryFontsemiBold.copyWith(
                                            fontSize: 19,
                                            color: yblue
                                          ),),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Text(subtitile[index],
                                              style: TextStyle(
                                                color: yblue
                                              ),),
                                            )
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(amount[index],
                                        style: primaryFontsemiBold.copyWith(
                                          color: Colors.red
                                        ),),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Text(date[index]),
                                        )
                                      ],
                                    )
                                  
                                 ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 100),
                                  child: Divider(
                                    //thickness: 1,
                                    color: ygrey,
                                  ),
                                )
                              ],
                            ),
                          );
                        }, 
                      
                      ),
                              
                          ],
                        ),
                       ),
                  ],
                )
              ],
              
            ),
          ],
        )
        ),
        bottomNavigationBar:Container(
         height: 60,
            width: size.width,
        color: Colors.white,
         child: Padding(
           padding: const EdgeInsets.only(left: 5,right:5),
           child: Container(
            height: 52,
            width: size.width,
            decoration: BoxDecoration(
              color:yindigo,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5,right: 5),
                    child: Obx(()=>
                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                                  onTap: (){
                                    navigationCOntroller.naviIndex(0);
                                    navigationCOntroller.update();
                                    Navigator.of(context).pushReplacementNamed('/home');
                                  },
                            child:navigationCOntroller.naviIndex==0? Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                color: ywhite,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset('assets/images/navigationhome.png'),
                                    Text('Home')
                                  ],
                                ),
                              ),
                            ):Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                child:  Center(
                                  child: Image.asset('assets/images/navigationhome.png',
                                  color: ywhite,),
                                ),
                              ),
                            ),
                          ),
                           GestureDetector(
                            onTap: () {
                              navigationCOntroller.naviIndex(1);
                              navigationCOntroller.update();
                              Navigator.of(context).pushReplacementNamed('/newpayee');
                            },
                             child:navigationCOntroller.naviIndex==1? Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                color: ywhite,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                   Image.asset('assets/images/navigationnewpayee.png',
                                   color: yindigo,),
                                  
                                    Text('New Payee')
                                  ],
                                ),
                              ),
                            ):Container(
                              child:  Image.asset('assets/images/navigationnewpayee.png',
                              color: ywhite,),
                            ),
                           ),
                           GestureDetector(
                            onTap: () {
                              navigationCOntroller.naviIndex(2);
                              navigationCOntroller.update();
                              Navigator.of(context).pushReplacementNamed( '/history');
                            },
                             child:navigationCOntroller.naviIndex==2? Container(
                              height: 30,
                              width: 90,
                              decoration: BoxDecoration(
                                color: ywhite,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                   Image.asset('assets/images/navigationhistory.png',color: yindigo,),
                                  
                                    Text('History')
                                  ],
                                ),
                              ),
                            ):Container(
                              child:   Image.asset('assets/images/navigationhistory.png',color: ywhite,),
                            ),
                           ),
                           GestureDetector(
                            onTap: (){
                              navigationCOntroller.naviIndex(3);
                              navigationCOntroller.update();
                              Navigator.of(context).pushReplacementNamed('/profile');
                            },
                             child:navigationCOntroller.naviIndex==3? Container(
                              height: 30,
                              width: 85,
                              decoration: BoxDecoration(
                                color: ywhite,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                   Image.asset('assets/images/navigationprofile.png',
                                   color: yindigo,),
                                  
                                    Text('Profile')
                                  ],
                                ),
                              ),
                            ):Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Container(
                                child:  Image.asset('assets/images/navigationprofile.png',
                                     color: ywhite,),
                              ),
                            ),
                           )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
           ),
         ),
       ) ,
    );
  }
}