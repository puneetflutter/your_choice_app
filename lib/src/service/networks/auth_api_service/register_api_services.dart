import 'dart:io';
import 'package:dio/dio.dart';

import '../../../models/register_model.dart';
import '../../base_urls/base_urls.dart';

class RegisterServicesApi extends BaseApiService {
  Future registerApi(RegisterModel registerModel) async {
    dynamic responseJson;
    try {
      var dio = Dio();

      var response = await dio.post(registerURl,
          options: Options(
              headers: {
                'Accept': 'application/json',
              },
              followRedirects: false,
              validateStatus: (status) {
                return status! <= 500;
              }),
          data: {
            "name": registerModel.name,
            "company_name": registerModel.username,
            "email": registerModel.email,
            "mobile": registerModel.mobile,
            "date_of_birth": registerModel.dob,
            "aadhar_no": registerModel.adharno,
            "password": registerModel.password,
          });
      print("::::::::<Register>::::::::status code::::::::::");
      print(response.statusCode);
      print(response.data);
      responseJson = response;
    } on SocketException {
      print("no internet");
    }
    return responseJson;
  }

  dynamic returnResponse(Response<dynamic> response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = response.data;
        print("here.>>>>>>>>>>>>");
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
