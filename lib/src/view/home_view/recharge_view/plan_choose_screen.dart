import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';

import '../../../constants/app_fonts.dart';

class PlanChooseScreen extends StatefulWidget {
  const PlanChooseScreen({super.key});

  @override
  State<PlanChooseScreen> createState() => _PlanChooseScreenState();
}

class _PlanChooseScreenState extends State<PlanChooseScreen> {
  var searchplanController=TextEditingController();
  List amount =[
    '₹299',
    '₹15',
    '₹499',
    '₹666',
  ];
  List titile=[
   'Validity 28 days, \nData 2.0 GB/Day \nVoice: Unlimited calls / SMS : 100 sms',
   'Existing Plan, \nData 1.0 GB/ \nFor users with an active validity plan',
   'Validity 28 days, \nData 2.5 GB/Day \nVoice: Unlimited calls / SMS : 100 sms',
   'Validity 84 days, \nData 2.0 GB/Day \nVoice: Unlimited calls / SMS : 100 sms'
  ];
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
                                            Navigator.of(context).pushReplacementNamed('/home');
                                          },
                                          child: Image.asset('assets/icons/backarrow.png')),
                                       Text('Recharge Bill',
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
                                            Navigator.of(context).pushReplacementNamed('/dthscreen');
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
                                         InkWell(
                                          onTap: (){
                                            Navigator.of(context).pushReplacementNamed('/postpaid');
                                          },
                                           child: Container(
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
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text('Choose the plan',
                                  style: primaryFontsemiBold.copyWith(
                                    fontSize: 20,
                                    color: yblue
                                  ),),
                                ],
                              ),
                            ),
                            ysizedbox20,
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: yindigo,
                                    radius: 33,
                                    child: Text('Y',
                                    style: primaryFontmedium.copyWith(
                                      fontSize: 39,
                                      color: ywhite
                                    ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Your Choice',
                                        style: primaryFontmedium.copyWith(
                                          color: yblue,
                                          fontSize: 22
                                        ),),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Text('9876543210'),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20,top: 15,left: 10),
                              child: Container(
                                height: 49,
                                decoration: BoxDecoration(
                                  color: ywhite,
                                  borderRadius: BorderRadius.circular(5)
                            
                                ),
                                child: TextField(
                                  controller:searchplanController,
                                  decoration: InputDecoration(
                                    hintText: 'Search a Plan',
                                    suffixIcon: Icon(Icons.search,color: ygrey,
                                    size: 40,),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)
                                    )
                                  ),
                                   ),
                              ),
                            ),
                            ysizedbox30,
                            Container(
                              height: 27,
                              width: MediaQuery.of(context).size.width,
                              color: ygrey.withOpacity(0.3),
                              child: Center(
                                child: Row(
                                  children: [
                                    Text('Recharge Plans',
                                    style: primaryFontmedium.copyWith(
                                      fontSize: 16
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                            ysizedbox20,
                             ListView.builder(
                        shrinkWrap: true,
                        itemCount: amount.length,
                        itemBuilder: (context, index) {
                          return Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: ywhite,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                offset: Offset(0.0, 0.75),
                                blurRadius: 5,
                                color: ygrey
                              )
                            ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          
                            children: [
                              
                              Padding(
                                padding: const EdgeInsets.only(top: 15,left: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                  Text(amount[index],
                                  style: TextStyle(
                                    fontSize: 14.5
                                  ),),
                                  Text(titile[index],
                                  style: TextStyle(
                                    fontSize: 14.5
                                  ),),
                                  InkWell(
                                    onTap: (){
                                      Navigator.of(context).pushReplacementNamed('/selectrecharge');
                                    },
                                    child: Icon(Icons.arrow_forward_ios))
                               ],
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
        ),
      ),
    );
  }
}