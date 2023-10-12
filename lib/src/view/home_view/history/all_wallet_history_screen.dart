import 'package:date_format/date_format.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';
import 'package:your_choice_app/src/controller/payout_controller.dart';

class AllWalletHistoryScreen extends StatefulWidget {
  const AllWalletHistoryScreen({super.key});

  @override
  State<AllWalletHistoryScreen> createState() => _AllWalletHistoryScreenState();
}

class _AllWalletHistoryScreenState extends State<AllWalletHistoryScreen> {

  final payoutController = Get.find<PayoutController>();

  final fromDateController = TextEditingController();
  final toDateController = TextEditingController();

  DateTime date1 = DateTime.now();
  DateTime date = DateTime.now();

  String selectdt = formatDate(DateTime.now().subtract(const Duration(days: 0)), [
    yyyy,
    "-",
    mm,
    "-",
    dd,
  ]);

  String selectdt1 = formatDate(
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day),
      [yyyy, "-", mm, "-", dd]);

  _showDatePicker(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
        builder: ((context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: yblue,
                onPrimary: Colors.white,
                onSurface: Colors.blue,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary:const Color.fromARGB(255, 42, 59, 158),
                ),
              ),
            ),
            child: child!,
          );
        }));

    if (picked != null) {
      setState(() {
        date1 = picked;
        selectdt = formatDate(date1.subtract(const Duration(days: 0)), [
          yyyy,
          "-",
          mm,
          "-",
          dd,
        ]);
      });
      payoutController.walletHistory(
          startDate: selectdt, endDate: selectdt1);
    }
  }

  _showDatePicker1(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
        builder: ((context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: yblue,
                onPrimary: Colors.white,
                onSurface: Colors.blue,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary:const Color.fromARGB(255, 42, 59, 158),
                ),
              ),
            ),
            child: child!,
          );
        }));

    if (picked != null) {
      setState(() {
        date = picked;
        selectdt1 = formatDate(date.add(const Duration(days: 0)), [
          yyyy,
          "-",
          mm,
          "-",
          dd,
        ]);
      });
      payoutController.walletHistory(
          startDate: selectdt, endDate: selectdt1);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    history();
  }

  history(){
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) { 
    payoutController.walletTransactionData.clear();
    payoutController.update();
    payoutController.walletHistory(startDate: selectdt, endDate: selectdt1);
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: yindigo,
      appBar: AppBar(
        backgroundColor: yindigo,
        elevation: 0,
        leading: Container(),
        titleSpacing: -35,
          title: Text('All Wallet History',
                                   style: primaryFontmedium.copyWith(
                                    fontSize: 20,
                                    color: ywhite,
                                    fontWeight: FontWeight.w600
                     ),),
                     actions:const [
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(Icons.change_circle_outlined),
                      ),
                     ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                       _showDatePicker(context);
                    },
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: ywhite,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(selectdt,
                                         style: primaryFontmedium.copyWith(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600
                           ),),
                      ),
                    ),
                  ),
                ),
                 const SizedBox(width: 10,),
                 Expanded(
                    child: InkWell(
                    onTap: (){
                       _showDatePicker1(context);
                    },
                     child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: ywhite,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(selectdt1,
                                         style: primaryFontmedium.copyWith(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600
                           ),),
                      ),
                                   ),
                   ),
                 ),
                 const SizedBox(width: 10,),
                 Expanded(
                   child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: ywhite,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text('Search',
                                       style: primaryFontmedium.copyWith(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600
                         ),),
                    ),
                                 ),
                 ),
              ],
            ),
            const SizedBox(height: 10,),
            Obx( () =>
               Row(
                children: [
                  Expanded(
                     child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: ywhite,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text('Total Credit\n₹ ${payoutController.totalCredit}',
                                         style: primaryFontmedium.copyWith(
                                          fontSize: 15,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w600
                           ),),
                      ),
                    ),
                   ),
                   const SizedBox(width: 10,),
                   Expanded(
                     child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: ywhite,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text('Total Debit\n₹ ${payoutController.totalDebit}',
                                           style: primaryFontmedium.copyWith(
                                            fontSize: 15,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w600
                             ),),
                      ),
                                   ),
                   ),
                ],
              ),
            ),
                        const SizedBox(height: 15,),
                         GetBuilder<PayoutController>(
                           builder: (_) {
                             return SizedBox(
                              height: size.height * 0.60,
                              child:payoutController.walletTransactionData.isEmpty ?
                               Center(
                                child: Text("No Data",
                                style: primaryFontmedium.copyWith(
                                                  fontSize: 18,
                                                  color:Colors.white,
                                                  fontWeight: FontWeight.w700
                                        ),
                                ),
                               ) :
                               ListView.builder(
                                itemCount: payoutController.walletTransactionData.length,
                                itemBuilder: (context, index) {
                                return payoutController.walletTransactionData[index].flag != "topup" ?
                                 Padding(
                                   padding: const EdgeInsets.only(bottom: 10),
                                   child: Container(
                                      width: double.infinity,
                                      color: ywhite,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                             Text('Remark : ${payoutController.walletTransactionData[index].remarks}',
                                                   style: primaryFontmedium.copyWith(
                                                    fontSize: 15,
                                                    color:Colors.red,
                                                    fontWeight: FontWeight.w700
                                          ),),
                                          const SizedBox(height: 10,),
                                    //       Text('Opening Balance : ₹ 357839.98',
                                    //                style: primaryFontmedium.copyWith(
                                    //                 fontSize: 15,
                                    //                 color: Colors.black,
                                    //                 fontWeight: FontWeight.w600
                                    //  ),),
                                     Text('Credit Amount: ₹ ${payoutController.walletTransactionData[index].creditAmount}',
                                                   style: primaryFontmedium.copyWith(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600
                                     ),),
                                     Text('Debit Amount : ₹ ${payoutController.walletTransactionData[index].debitAmount}',
                                                   style: primaryFontmedium.copyWith(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600
                                     ),),
                                    //  Text('Closing Balance : ₹ 17839.98',
                                    //                style: primaryFontmedium.copyWith(
                                    //                 fontSize: 15,
                                    //                 color: Colors.black,
                                    //                 fontWeight: FontWeight.w600
                                    //  ),),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 5,bottom: 5),
                                      child: DottedLine(
                                            direction: Axis.horizontal,
                                            alignment: WrapAlignment.center,
                                            lineLength: double.infinity,
                                            lineThickness: 1.0,
                                            dashLength: 4.0,
                                            dashColor: Colors.black,
                                            dashRadius: 0.0,
                                            dashGapLength: 4.0,
                                            dashGapColor: Colors.transparent,
                                            dashGapRadius: 0.0,
                                           ),
                                         ),
                                         Text('Bank Name : ${payoutController.walletTransactionData[index].beneficiary!.bankName}',
                                                   style: primaryFontmedium.copyWith(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600
                                     ),),
                                         Text('Account Number : ${payoutController.walletTransactionData[index].beneficiary!.accountNumber}',
                                                   style: primaryFontmedium.copyWith(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600
                                     ),),
                                     Text('IFSC Number : ${payoutController.walletTransactionData[index].beneficiary!.bankIfscCode}',
                                                   style: primaryFontmedium.copyWith(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600
                                     ),),
                                     Text('Payee Name : ${payoutController.walletTransactionData[index].beneficiary!.name}',
                                                   style: primaryFontmedium.copyWith(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600
                                     ),),
                                     Text('Txn Status : ${payoutController.walletTransactionData[index].txstatus}',
                                                   style: primaryFontmedium.copyWith(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600
                                     ),),
                                     Text('Txn Id : ${payoutController.walletTransactionData[index].txnid}',
                                                   style: primaryFontmedium.copyWith(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600
                                     ),),
                                    //  Text('URN Number : Z6788299289',
                                    //                style: primaryFontmedium.copyWith(
                                    //                 fontSize: 15,
                                    //                 color: Colors.black,
                                    //                 fontWeight: FontWeight.w600
                                    //  ),),
                                          ],
                                        ),
                                      ),
                                    ),
                                 ) : 
                                  Container(
                          width: double.infinity,
                          color: ywhite,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Date Time : ${payoutController.walletTransactionData[index].createdAt}',
                                         style: primaryFontmedium.copyWith(
                                          fontSize: 15,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w700
                                ),),
                                 const SizedBox(height: 10,),
                                 Text('Remark : ${payoutController.walletTransactionData[index].remarks}',
                                         style: primaryFontmedium.copyWith(
                                          fontSize: 15,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w700
                                ),),
                                // const SizedBox(height: 10,),
                                //  Text('Link Request Amt : ₹ 70000.00',
                                //          style: primaryFontmedium.copyWith(
                                //           fontSize: 15,
                                //           color: Colors.green,
                                //           fontWeight: FontWeight.w700
                                // ),),
                                const SizedBox(height: 10,),
                        //          Text('Opening Balance : ₹ 1039.98',
                        //                style: primaryFontmedium.copyWith(
                        //                 fontSize: 15,
                        //                 color: Colors.black,
                        //                 fontWeight: FontWeight.w600
                        //  ),),
                         Text('Credit Amount: ₹ ${payoutController.walletTransactionData[index].creditAmount}',
                                       style: primaryFontmedium.copyWith(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600
                         ),),
                         Text('Debit Amount : ₹ ${payoutController.walletTransactionData[index].debitAmount}',
                                       style: primaryFontmedium.copyWith(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600
                         ),),
                        //  Text('Closing Balance : ₹ 7839.98',
                        //                style: primaryFontmedium.copyWith(
                        //                 fontSize: 15,
                        //                 color: Colors.black,
                        //                 fontWeight: FontWeight.w600
                        //  ),),
                        const Padding(
                          padding: EdgeInsets.only(top: 5,bottom: 5),
                          child: DottedLine(
                                direction: Axis.horizontal,
                                alignment: WrapAlignment.center,
                                lineLength: double.infinity,
                                lineThickness: 1.0,
                                dashLength: 4.0,
                                dashColor: Colors.black,
                                dashRadius: 0.0,
                                dashGapLength: 4.0,
                                dashGapColor: Colors.transparent,
                                dashGapRadius: 0.0,
                               ),
                             ),
                            //  Text('Payment Mode : Credit Card',
                            //            style: primaryFontmedium.copyWith(
                            //             fontSize: 15,
                            //             color: Colors.black,
                            //             fontWeight: FontWeight.w600
                            //  ),),
                             Text('PG Name : ${payoutController.walletTransactionData[index].users.pg}',
                                       style: primaryFontmedium.copyWith(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600
                             ),),
                             Text('Holder Name : ${payoutController.walletTransactionData[index].users.name}',
                                       style: primaryFontmedium.copyWith(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600
                             ),),
                            //  Text('Txn Id : W6748939992',
                            //            style: primaryFontmedium.copyWith(
                            //             fontSize: 15,
                            //             color: Colors.black,
                            //             fontWeight: FontWeight.w600
                            //  ),),
                            //  Text('Card Number : XXXXXXXXXXXX7809',
                            //            style: primaryFontmedium.copyWith(
                            //             fontSize: 15,
                            //             color: Colors.black,
                            //             fontWeight: FontWeight.w600
                            //  ),),
                            //  Text('URN Number : 62889199199',
                            //            style: primaryFontmedium.copyWith(
                            //             fontSize: 15,
                            //             color: Colors.black,
                            //             fontWeight: FontWeight.w600
                            //  ),),
                              ],
                            ),
                          ),
                        );
                                },
                              ),
                        );
                           }
                         ),
                        
          ],
        ),
      ),
    );
  }
}