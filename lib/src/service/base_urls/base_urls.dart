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
}
