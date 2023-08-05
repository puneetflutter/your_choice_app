import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;

import '../models/cart_list_model.dart';
import '../service/networks/home_api_service/cards_api_service.dart';

class HomeController extends GetxController {
  GetPlansApiServices getCardApiServices = GetPlansApiServices();
  List<CardDataList> cardlist = [];
  getcardList() async {
    dio.Response<dynamic> response = await getCardApiServices.getPlans();
    if (response.statusCode == 200) {
      CardList cardModel = CardList.fromJson(response.data);
      cardlist = cardModel.data;
    }
    update();
  }
}
