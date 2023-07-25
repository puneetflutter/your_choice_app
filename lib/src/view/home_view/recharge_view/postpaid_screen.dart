import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';

import '../../../constants/app_fonts.dart';

class PostpaidScreen extends StatefulWidget {
  const PostpaidScreen({super.key});

  @override
  State<PostpaidScreen> createState() => _PostpaidScreenState();
}
List image=[
   'assets/images/bsnlimage.png',
  'assets/images/airtelimage.png',
  'assets/images/airlinedthimage.png',
  'assets/images/asiantdthimage.png',
  'assets/images/connectdthimage.png',
  'assets/images/exceldthimage.png'
    // 'assets/images/jioimage.png',
    // 'assets/images/vodphoneimage.png'
];
List title=[
  'BSNL Broadhband/Landline',
 'Airtel Digital Tv',
 'Alliance Broadthband',
  'Asiant Broadthband',
  'Connect Broadthband',


];
class _PostpaidScreenState extends State<PostpaidScreen> {
  var searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yindigo,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                           Padding(
                                      padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                             GestureDetector(
                                              onTap: (){
                                                Navigator.of(context).pushNamed('/home');
                                              },
                                              child: Image.asset('assets/icons/backarrow.png')),
                                           Text('PostPaid Bill',
                                           style: primaryFontsemiBold.copyWith(
                                            color: ywhite,
                                            fontSize: 20
                                           ),),
                                           Image.asset('assets/images/femaleprofile.png',
                                           fit: BoxFit.fitHeight,height: 45,)
                                        ],
                                      ),
                                    ),
                                    ysizedbox40,
                                    ysizedbox10,
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          children:[
                                             Container(
                                              height: 66,
                                              width: 65,
                                              decoration: BoxDecoration(
                                                color: ywhite,
                                                borderRadius: BorderRadius.circular(18),
                                                
                                              ),
                                              child: Center(
                                                child: Image.asset('assets/icons/containermobile.png'),
                                              ),
                                             ),
                                             ysizedbox10,
                                             Text('Mobile',
                                             style: TextStyle(
                                              fontSize: 14,
                                              color: ywhite.withOpacity(0.8)
                                             ),)
                                          ]
                                             ),
                                        Column(
                                          children:[
                                            InkWell(
                                              onTap: (){
                                                Navigator.of(context).pushNamed('/dthscreen');
                                              },
                                              child: Container(
                                                height: 66,
                                                width: 65,
                                                decoration: BoxDecoration(
                                                  color: ywhite,
                                                  borderRadius: BorderRadius.circular(18),
                                                  
                                                ),
                                                child: Center(
                                                  child: Image.asset('assets/icons/containerdth.png'),
                                                ),
                                               ),
                                            ),
                                             //Image.asset('assets/images/containerdth.png'),
                                             ysizedbox10,
                                             Text('DTH',
                                             style: TextStyle(
                                              fontSize: 14,
                                              color: ywhite.withOpacity(0.4)
                                             ),),
      
                                      ]),
                                        Column(
                                          children:[
                                             Container(
                                              height: 66,
                                              width: 65,
                                              decoration: BoxDecoration(
                                                color: ywhite,
                                                borderRadius: BorderRadius.circular(18),
                                                
                                              ),
                                              child: Center(
                                                child: Image.asset('assets/icons/containerpostpaid.png'),
                                              ),
                                             ),
                                             ysizedbox10,
                                             Text('Postpaid',
                                             style: TextStyle(
                                              fontSize: 14,
                                              color: ywhite.withOpacity(0.5)
                                             ),)
                                      ])
                                        
                                      ],
                                    )
                  ],
                ),
                ysizedbox30,
                Column(
                  children: [
                     Container(
                      height: 700,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                            color: ywhite,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)
                            )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                           
                            ysizedbox40,
                               ListView.builder(
                        shrinkWrap: true,
                        itemCount: image.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed( '/postdeatail');
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            
                              children: [
                                
                                Padding(
                                  padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
                                  child: Row(
                                 
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Image.asset(image[index],
                                    height: 70,fit: BoxFit.fitHeight,),
                                   
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(title[index],
                                      style: TextStyle(
                                        fontSize: 15.5
                                      ),),
                                    ),
                                  
                                 ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 100),
                                  child: Divider(
                                    color: ygrey,
                                    thickness: 0.5,
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
                     )
                  ],
                )
              ],
            ),
          ],
        )),
    );
  }
}