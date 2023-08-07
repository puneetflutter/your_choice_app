import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

import '../../controller/profile_controller/profileapi_controller.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

final profileController = Get.find<ProfileApiController>();

class _NotificationScreenState extends State<NotificationScreen> {
   @override
  void initState() {
    super.initState();
    profileController.getNotificationList();
  }
  final profileController = Get.find<ProfileApiController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ysizedbox30,
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/bottumnavbar');
                  },
                  child: Image.asset(
                    'assets/icons/backarrow.png',
                    color: yblue,
                  ),
                ),
                Text(
                  'Notification',
                  style:
                      primaryFontsemiBold.copyWith(color: yblue, fontSize: 20),
                ),
                Icon(
                  Icons.more_horiz,
                  color: yblue,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Row(
              children: [
                Text('New'),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: ygrey.withOpacity(0.4), shape: BoxShape.circle),
                    child: Center(
                      child: Text(
                        '2',
                        style: TextStyle(color: yindigo),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(height: 500,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: profileController.notificationList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5, top: 5),
                  child: ListTile(
                      leading: profileController
                                  .notificationList[index].message ==
                              ""
                          ? const Text('hi')
                          : Text(
                              profileController.notificationList[index].message)
                      // title: Row(
                      //   children: [
                      //     Text(
                      //       profileController.notificationList[index].title,
                      //       style: const TextStyle(
                      //           fontWeight: FontWeight.w700),
                      //     ).animate().fade().scale(),
                      //   ],
                      // ),
                      // title: Text(
                      //   profileController.notificationList[index].message,
                      //   style: primaryfont.copyWith(
                      //       fontSize: 14, color: Colors.black54),
                      // ),
                      // trailing: const Text(
                      //   '',
                      //   style: TextStyle(fontSize: 10),
                      // ).animate().fade().scale(),
                      ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  height: 1,
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
