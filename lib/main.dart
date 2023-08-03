import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/controller/sigin_controller.dart';
import 'package:your_choice_app/src/view/auth_views/auth_landing_screen.dart';
import 'package:your_choice_app/src/view/auth_views/forgotscreen/forgotpassword_screen.dart';
import 'package:your_choice_app/src/view/auth_views/forgotscreen/forgotpass_verification_screen.dart';
import 'package:your_choice_app/src/view/auth_views/forgotscreen/password_create_screen.dart';
import 'package:your_choice_app/src/view/auth_views/forgotscreen/password_sucess_screen.dart';
import 'package:your_choice_app/src/view/auth_views/onbording11.dart';
import 'package:your_choice_app/src/view/auth_views/register_screen.dart';
import 'package:your_choice_app/src/view/auth_views/registred_screen.dart';
import 'package:your_choice_app/src/view/auth_views/regverified_screen.dart';
import 'package:your_choice_app/src/view/auth_views/signin_screen.dart';
import 'package:your_choice_app/src/view/home_view/credit_card/credit_card_screen.dart';
import 'package:your_choice_app/src/view/home_view/history/history_screen.dart';
import 'package:your_choice_app/src/view/home_view/newpayee/new_payeescreen.dart';
import 'package:your_choice_app/src/view/home_view/newpayee/new_paymentdetails.dart';
import 'package:your_choice_app/src/view/home_view/notification_screen.dart';
import 'package:your_choice_app/src/view/home_view/payment_link/payment_link_screen.dart';
import 'package:your_choice_app/src/view/home_view/profile/confirmation_pin_screen.dart';
import 'package:your_choice_app/src/view/home_view/profile/create_pin_screen.dart';
import 'package:your_choice_app/src/view/home_view/profile/edit_profile_screen.dart';
import 'package:your_choice_app/src/view/home_view/profile/password_screen.dart';
import 'package:your_choice_app/src/view/home_view/profile/profile_screen.dart';
import 'package:your_choice_app/src/view/home_view/profile/referal_screen.dart';
import 'package:your_choice_app/src/view/home_view/profile/support_screen.dart';
import 'package:your_choice_app/src/view/home_view/ptop_view/ptop_screen.dart';
import 'package:your_choice_app/src/view/home_view/ptop_view/tranfer_summery_screen.dart';
import 'package:your_choice_app/src/view/home_view/recharge_view/dth_discription_screen.dart';
import 'package:your_choice_app/src/view/home_view/recharge_view/dth_screen.dart';
import 'package:your_choice_app/src/view/home_view/recharge_view/plan_choose_screen.dart';
import 'package:your_choice_app/src/view/home_view/recharge_view/post_detail_screen.dart';
import 'package:your_choice_app/src/view/home_view/recharge_view/postpaid_screen.dart';
import 'package:your_choice_app/src/view/home_view/recharge_view/recharge_screen.dart';
import 'package:your_choice_app/src/view/home_view/recharge_view/select_prepaid_screen.dart';
import 'package:your_choice_app/src/view/home_view/recharge_view/select_rechargeplan.dart';
import 'package:your_choice_app/src/view/home_view/toupscreen/instanttopup_screen.dart';
import 'package:your_choice_app/src/view/home_view/toupscreen/paymentsucess_screen.dart';
import 'package:your_choice_app/src/view/home_view/toupscreen/selectcard_screen.dart';
import 'package:your_choice_app/src/view/home_view/toupscreen/topup_payment_screen.dart';
import 'package:your_choice_app/src/view/home_view/toupscreen/topup_screen.dart';
import 'package:your_choice_app/src/view/splash_screen/splash_screen.dart';
import 'package:your_choice_app/src/widgets/bottumnav_bar.dart';

import 'src/view/home_view/home_screen.dart';

void main() {
  Get.put(AuthController());
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
     initialRoute: "/",


      routes: {
        "/": (context) => SplashScreen(),
        "/onbording": (context) => OnbordingScreen(),
        "/home": (context) => HomeScreen(),
        '/authlanding': (context) => AuthLandingScreen(),
        '/siginhome': (context) => SigninScreen(),
        '/forgotscreen': (context) => ForgotPasswordScreen(),
        '/forgotverification': (context) => ForgotPassVerificationScreen(),
        '/passwordcreate': (context) => PasswordCreateScreen(),
        '/passwordsucess': (context) => PasswordSucessScreen(),
        '/registerscreen': (context) => RegisterScreen(),
        '/registeredscreen': (context) => RegisteredScreen(),
        '/registerverifiedscreen': (context) => RegisterverifiedScreen(),
        '/instaptop': (context) => InstantTopupScreen(),
        '/selectcard': (context) => SelectCardScreen(),
        '/topupscreen': (context) => TopUpScreen(),
        '/topuppayment': (context) => TopUpPaymentScreen(),
        '/paymentsuccess': (context) => paymentSucessScreen(),
        '/paymentlink': (context) => PaymentLinkScreen(),
        '/ptopscreen': (context) => PtopScreen(),
        '/transfersummery': (context) => TransferSummeryScreen(),
        '/creditcard': (context) => CreditCardScreen(),
        '/recharge': (context) => RechargeScreen(),
        '/selectprepaid': (context) => SlectePrepaidScreen(),
        '/planchoose': (context) => PlanChooseScreen(),
        '/selectrecharge': (context) => SelectRechargePlanScreen(),
        '/dthscreen': (context) => DthScreen(),
        '/dthdetail': (context) => DthDiscriptionScreen(),
        '/postpaid': (context) => PostpaidScreen(),
        '/postdeatail': (context) => PostpaidDetailScreen(),
        '/newpayee': (context) => NewPayeeScreen(),
        '/newpaydetail': (context) => NewPaymentDetailScreen(),
        '/history': (context) => HistoryScreen(),
        '/profile': (context) => ProfileScreen(),
        '/editprofile': (context) => EditProfileScreen(),
        '/createpin': (context) => CreatePinScreen(),
        '/confirmationpin': (context) => ConfirmationPinScreen(),
        '/password': (context) => PasswordScreen(),
        '/referal': (context) => ReferalScreen(),
        '/support': (context) => SupportScreen(),
        '/notification': (context) => NotificationScreen(),
        '/bottumnavbar': (context) => BottumBar()
      },
    );
  }
}
