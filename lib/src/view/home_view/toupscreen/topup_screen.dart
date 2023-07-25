import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

class TopUpScreen extends StatefulWidget {
  const TopUpScreen({super.key});

  @override
  State<TopUpScreen> createState() => _TopUpScreenState();
}

class _TopUpScreenState extends State<TopUpScreen> {
  var amountController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
        
             Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20,left: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed('/selectcard');
                      },
                      child: Icon(Icons.arrow_back,
                      color: yblue,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text('Top Up',
                    style: primaryFontsemiBold.copyWith(
                      color: yblue,
                      fontSize: 20,
                      ),),
                  ),
                    Container()
                ],
              ),
            ),
          ),
            ysizedbox20,
              Center(
                child: Image.asset('assets/images/topupimage.png'),
              ),
              ysizedbox20,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Amount',
                  style: primaryFontsemiBold.copyWith(
                    color: yblue,
                    fontSize: 20
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 53,
                      width: 280,
                      decoration: BoxDecoration(
                        color: ywhite
                      ),
                      child: TextField(
                        controller: amountController,
                        
                        decoration: InputDecoration(
                          
                          hintText: ' ₹  Enter Amount',
                          hintStyle: TextStyle(
                            color: Color(0xff010101).withOpacity(0.5),
                            fontSize: 13,
                          ),
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),
                  )
                ],
              ),
              ysizedbox40,
              ysizedbox40,
              ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                minimumSize: Size(290, 50),
                backgroundColor: yindigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              onPressed: (){
              Navigator.of(context).pushNamed( '/topuppayment');
              }, 
                       child:Text('Proceed',
                       style: TextStyle(
              fontSize: 17
                       ),)),
          ],
        ),
      ),
    );
  }
}