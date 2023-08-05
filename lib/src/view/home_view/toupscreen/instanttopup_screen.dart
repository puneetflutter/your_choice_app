import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';
import 'package:your_choice_app/src/view/home_view/toupscreen/topup_screen.dart';

import '../../../controller/home_controller.dart';

class InstantTopupScreen extends StatefulWidget {
  const InstantTopupScreen({super.key});

  @override
  State<InstantTopupScreen> createState() => _InstantTopupScreenState();
}

class _InstantTopupScreenState extends State<InstantTopupScreen> {
  List cardimage = [
    'assets/images/normalcardimage.png',
    'assets/images/corpratecardimage.png',
    'assets/images/corpratecard2image.png',
    'assets/images/preparedcardimage.png',
    'assets/images/amexcardimage.png',
    'assets/images/dinnercardimage.png'
  ];

  List title = [
    'Normal Card',
    'Corporate / \nBusiness Card 1',
    'Corporate / \nBusiness Card 2',
    'Prepard Card',
    'Amex Card',
  ];

  var selectedId;

  @override
  void initState() {
    super.initState();
    homeController.getcardList();
    //  serviceofferController.GettodayoffersList();
  }

  final homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/bottumnavbar');
                      },
                      child: Icon(Icons.arrow_back)),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Choose the Card Type',
                          style: primaryFontsemiBold.copyWith(
                            color: yblue,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ysizedbox40,
          GetBuilder<HomeController>(
            builder: (_) {
              return Container(
                height: 300,
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.2,
                    crossAxisCount: 3,
                  ),
                  itemCount: homeController.cardlist.length,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedId = homeController.cardlist[index].cardId;
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: homeController.cardlist[index].cardId
                                          .toString() ==
                                      selectedId
                                  ? yOrange
                                  : yblue,
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          ysizedbox10,
                          Text(homeController.cardlist[index].cardType)
                              .text
                              .semiBold
                              .blue800
                              .make(),
                        ],
                      ),
                    );
                  }),
                ),
              );
            },
          ),
          ysizedbox30,
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(290, 50),
                backgroundColor: yindigo,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
            onPressed: () {
              Get.to(TopUpScreen(cardId:selectedId));
             // Navigator.of(context).pushNamed('/selectcard');
            },
            child: Text(
              'Next',
              style: TextStyle(fontSize: 17),
            ),
          ),
          ysizedbox20,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Please any one card choose!',
                style: primaryFont.copyWith(fontSize: 15, color: yblue),
              )
            ],
          )
        ],
      )),
    );
  }
}
