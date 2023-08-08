abstract class BaseApiService {
  //register url
  final String registerURl =
      "https://yourchoice.batechnology.in/api/user/register";

  //login url
  final String loginURL = "https://yourchoice.batechnology.in/api/user/login";
  //profile
  final String getProfileURL =
      'https://yourchoice.batechnology.in/api/user/details';
  //updateprofile
  final String getupdateprofileURL =
      'https://yourchoice.batechnology.in/api/user/update';

  //create order url
  final String createOrderd =
      "https://yourchoice.batechnology.in/api/create-order";

  //pay order url
  final String payOrderURL = "https://yourchoice.batechnology.in/api/pay-order";

  //p to p create order url
  final String createPtoPOrder =
      "https://yourchoice.batechnology.in/api/create-ptop-order";

  //create payment link url
  final String createPaymentLink =
      "https://yourchoice.batechnology.in/api/create-payment-link";

  //forgotpassword
  final String forgotPasswordURL =
      'https://yourchoice.batechnology.in/api/user/forgot-password';

  //support
  final String getsupportURL =
      'https://yourchoice.batechnology.in/api/create-support';

  //password
  final String getpasswordURL =
      'https://yourchoice.batechnology.in/api/user/change-password';

  // card list
 final String  cardListURL="https://yourchoice.batechnology.in/api/card-list";

  //notification list
 final String notificationlistURL="https://yourchoice.batechnology.in/api/notification-list";

  final String paymentOrderResponseURL =
      "https://yourchoice.batechnology.in/api/payment-response";

  final String paymentStatusURL =
      "https://yourchoice.batechnology.in/api/payment-status";
    //create pin
   final String createpinURL =  'https://yourchoice.batechnology.in/api/create-pin';  

   //addnewpay
   final String addnewpayURL = 'https://yourchoice.batechnology.in/api/add-payee';

   //getpay
   final String getpayUrl ='https://yourchoice.batechnology.in/api/get-payee';
   //deletepay
   final String  paydeleteURL = 'https://yourchoice.batechnology.in/api/delete-payee';
}
