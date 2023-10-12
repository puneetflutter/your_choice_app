import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/controller/forgotpassword_controller.dart';
import 'package:your_choice_app/src/controller/pay_controller/add_newpay_controller.dart';
import 'package:your_choice_app/src/controller/payout_controller.dart';
import 'package:your_choice_app/src/controller/profile_controller/profileapi_controller.dart';
import 'package:your_choice_app/src/controller/home_controller.dart';
import 'package:your_choice_app/src/controller/sigin_controller.dart';
import 'package:your_choice_app/src/controller/top_up_controller.dart';
import 'package:your_choice_app/src/view/auth_views/auth_landing_screen.dart';
import 'package:your_choice_app/src/view/auth_views/forgotscreen/forgotpassword_screen.dart';
import 'package:your_choice_app/src/view/auth_views/forgotscreen/forgotpass_verification_screen.dart';
import 'package:your_choice_app/src/view/auth_views/forgotscreen/password_create_screen.dart';
import 'package:your_choice_app/src/view/auth_views/forgotscreen/password_sucess_screen.dart';
import 'package:your_choice_app/src/view/auth_views/onbording11.dart';
import 'package:your_choice_app/src/view/auth_views/register_screen.dart';
import 'package:your_choice_app/src/view/auth_views/signin_screen.dart';
import 'package:your_choice_app/src/view/home_view/credit_card/credit_card_screen.dart';
import 'package:your_choice_app/src/view/home_view/history/all_wallet_history_screen.dart';
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
import 'package:your_choice_app/src/view/home_view/profile/support_screen_new.dart';
import 'package:your_choice_app/src/view/home_view/ptop_view/ptop_screen.dart';
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
import 'package:your_choice_app/src/view/splash_screen/splash_screen.dart';
import 'package:your_choice_app/src/widgets/bottumnav_bar.dart';
import 'src/view/home_view/home_screen.dart';

void main() {
  Get.put(AuthController());
  Get.put(ProfileApiController());
  Get.put(HomeController());
  Get.put(PayController());
  Get.put(ForfotPasswordController());
  Get.put(InstantTopUpController());
  Get.put(PayoutController());
 
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
        "/": (context) => const SplashScreen(),
        "/onbording": (context) => const OnbordingScreen(),
        "/home": (context) => const HomeScreen(),
        '/authlanding': (context) => const AuthLandingScreen(),
        '/siginhome': (context) => const SigninScreen(),
        '/forgotscreen': (context) => const ForgotPasswordScreen(),
        '/forgotverification': (context) => const ForgotPassVerificationScreen(),
        '/passwordcreate': (context) => const PasswordCreateScreen(),
        '/passwordsucess': (context) => const PasswordSucessScreen(),
        '/registerscreen': (context) => const RegisterScreen(),
        // '/registeredscreen': (context) => RegisteredScreen(),
        // '/registerverifiedscreen': (context) => RegisterverifiedScreen(),
        '/instaptop': (context) => const InstantTopupScreen(),
        '/selectcard': (context) => const SelectCardScreen(),
     //   '/topupscreen': (context) => TopUpScreen(),
        '/topuppayment': (context) => const TopUpPaymentScreen(),
        '/paymentsuccess': (context) => const PaymentSucessScreen(),
        '/paymentlink': (context) => const PaymentLinkScreen(),
        '/ptopscreen': (context) => const PtopScreen(),
        // '/transfersummery': (context) => TransferSummeryScreen(),
        '/creditcard': (context) => const CreditCardScreen(),
        '/recharge': (context) => const RechargeScreen(),
        '/selectprepaid': (context) => const SlectePrepaidScreen(),
        '/planchoose': (context) => const PlanChooseScreen(),
        '/selectrecharge': (context) => const SelectRechargePlanScreen(),
        '/dthscreen': (context) => const DthScreen(),
        '/dthdetail': (context) => const DthDiscriptionScreen(),
        '/postpaid': (context) => const PostpaidScreen(),
        '/postdeatail': (context) => const PostpaidDetailScreen(),
        '/newpayee': (context) => const NewPayeeScreen(),
        '/newpaydetail': (context) => const NewPaymentDetailScreen(),
        '/history': (context) => const AllWalletHistoryScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/editprofile': (context) => const EditProfileScreen(),
        '/createpin': (context) => const CreatePinScreen(),
        '/confirmationpin': (context) => const ConfirmationPinScreen(),
        '/password': (context) => const PasswordScreen(),
        '/referal': (context) => const ReferalScreen(),
        '/support': (context) => const SupportScreenNew(),
        '/notification': (context) => const NotificationScreen(),
        '/bottumnavbar': (context) => BottumBar()
      },
    );
  }
}
