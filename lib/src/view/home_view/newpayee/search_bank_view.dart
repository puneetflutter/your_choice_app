import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';
import 'package:your_choice_app/src/controller/pay_controller/add_newpay_controller.dart';

class SearchBankView extends StatefulWidget {
  const SearchBankView({super.key});

  @override
  State<SearchBankView> createState() => _SearchBankViewState();
}

class _SearchBankViewState extends State<SearchBankView> {
  var selectBankNameController = TextEditingController();
  final payeeController = Get.find<PayController>();

  @override
  void initState() {
    super.initState();
    selectBankNameController.addListener(searchData);
  }

  searchData() {
    payeeController.searchBank(searchKey: selectBankNameController.text);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Container(
                width: size.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 220, 231, 239)),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    controller: selectBankNameController,
                    decoration: const InputDecoration.collapsed(
                        hintText: "Search Bank Name"),
                  ),
                ),
              ),
            ),
          )),
      body: GetBuilder<PayController>(builder: (_) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: ListView.builder(
              itemCount: payeeController.searchBankDataList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    payeeController.selectBankNameController.text =
                        payeeController.searchBankDataList[index].bankName;
                    payeeController.bankIFSCController.text =
                        payeeController.searchBankDataList[index].ifscCode;
                    Get.back();
                    payeeController.update();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          payeeController.searchBankDataList[index].bankName,
                          style: primaryFontsemiBold.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 1.5,
                        )
                      ],
                    ),
                  ),
                );
              }),
        );
      }),
    );
  }
}
