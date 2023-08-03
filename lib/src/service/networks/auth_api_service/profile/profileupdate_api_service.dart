
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../models/profileupdate_model.dart';
import '../../../base_urls/base_urls.dart';

class GetProfileUpdateApiService extends BaseApiService{
  
  Future getprofileupdate({
      required ProfileUpdateModel profileUpdateModel
  })async{
   dynamic responseJson;
   try{
    var dio = Dio();
    FormData formData = FormData.fromMap({
       "company_name": profileUpdateModel.companyName,
      'name':profileUpdateModel.userName,
      'email':profileUpdateModel.email,
      'mobile_number':profileUpdateModel.mobilenumber,
       "date_of_birth":profileUpdateModel.dateOfBirth,
       "aadhar_no":profileUpdateModel.aadhar_no,
       "userId":profileUpdateModel.user_id


    });

    final prefs = await SharedPreferences.getInstance();
    String? authtoken = prefs.getString('auth_token');

    var response = await dio.post(getupdateprofileURL,
    options: Options(
      headers: {
        'Accept':'application/json',
        'Authorization':'Bearer $authtoken'
      },
      followRedirects: false,
      validateStatus: (status) {
        return status! <=500; 
        
      },  
    ),
    data: formData
    );
    print('::::::::::::::<profile-update-API>::::::::::::<status code>');
    print(response.statusCode);
    print(response.data);
    responseJson=response;
   }on SocketException{
    print('no internet');
   }
   return responseJson;
  }
  
  dynamic returnResponse(Response<dynamic> response){
    switch (response.statusCode){
       case 200:
       dynamic responseJson = response.data;
       print('here.>>>>>');
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