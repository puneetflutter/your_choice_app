import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';

class EaseBuzzTokenApiService {
  
 // String key = "JBDXV7MNL2";
  //String salt = "RV6LN9NZEL";

  // test
  String key = "2PBP7IABZ2";
  String salt = "DAH88E3UWQ";

  // new key = JBDXV7MNL2
  // new salt = RV6LN9NZEL

  // String key = "G9Y2FJFQAD";
  // String salt = "MRFPTD851G";

  Future getPaymentToken(
      {required String amount,
      required String customerName,
      required String id,
      required String email,
      required String phone}) async {
    dynamic responseJson;
    var bytes = utf8.encode(
        "$key|$id|$amount|subscription|$customerName|$email|||||||||||$salt"); // data being hashed

    var hash = sha512.convert(bytes);
    print(hash);
    var body = {
      "key": key,
      "txnid": id,
      'firstname': customerName,
      'amount': amount,
      'productinfo': 'subscription',
      'phone': phone,
      'email': email,
      'surl': 'http://localhost:8000/response/',
      'furl': 'http://localhost:8000/response/',
      'hash': hash.toString(),
      'salt': salt
    };
    try {
      //production url - https://pay.easebuzz.in/payment/initiateLink
      //test url - https://testpay.easebuzz.in/payment/initiateLink
      final response = await http.post(
          Uri.parse("https://testpay.easebuzz.in/payment/initiateLink"),
          body: body,
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          });
      print("......................easebuzz api....response${response.statusCode}");
      print("......................$amount");
      print("......................$key");
      print("......................$id");
      print("......................$customerName");
      print("......................$email"); 
      print("......................$phone");
      print(response.body.toString());
      responseJson = returnResponse(response);
    } on SocketException {
      // throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        print(
            "Success ******************************api call***************************");
        return responseJson;
      case 400:
      // throw BadRequestException(response.body.toString());
      case 401:
      case 403:
      // throw UnauthorisedException(response.body.toString());
      case 404:
      // throw UnauthorisedException(response.body.toString());
      case 500:
      default:
      // throw FetchDataException(
      //     'Error occured while communication with server' +
      //         ' with status code : ${response.statusCode}');
    }
  }
}
