import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';
import 'package:your_choice_app/src/view/home_view/home_screen.dart';
import 'package:your_choice_app/src/widgets/bottumnav_bar.dart';


class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  bool isPageViewEnabled = false;
  late PageController _pageController;
  // @override
  // void initState() {

  //   _pageController = PageController(initialPage: 0);

  //   super.initState();
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: ywhite,
        body: SafeArea(
         
         child:     Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 533,
                      child: PageView(controller: _pageController, children: [
                     youronbording1(),
                     Youronbording2(),
                     Youronbording3(),
                     Youronbording4(),


                  ],),),
                  Padding(
                    padding:
                        const EdgeInsets.only( left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              _pageController.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.decelerate,
                              );
                            },
                            child: Text('')),
                     
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           SmoothPageIndicator(
                                controller: _pageController,
                                count: 4,
                                axisDirection: Axis.horizontal,
                                effect: SlideEffect(
                                  activeDotColor:yindigo ,
                                  dotHeight: 11,
                                
                                  dotWidth: 11,
                                ),
                              ),
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                  ysizedbox30,
                  GestureDetector(
                            onTap: () {
                              setState(() {
                                isPageViewEnabled = true;
                              });
                              if (_pageController.page!.toInt() == 3) {
                              Navigator.of(context).pushNamed("/authlanding");
                              } else {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.decelerate,
                                );
                              }
                            },
                            child: Container(
                              height: 45,
                              width: 250,
                              decoration: BoxDecoration(
                                color: yindigo,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Text('Next',
                                style: primaryFont.copyWith(
                                  fontSize: 18,
                                  color: ywhite
                                ),),
                              ),
                            )
                            ),
                            ysizedbox20,
                            TextButton(onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottumBar()));
                            }, 
                            child: Text('Skip',
                            style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 18,
                            ),))
                ],
              ),
             
            
          
        ),
      
    );
  }
}

class youronbording1 extends StatefulWidget {
  const youronbording1({ super.key,});

  @override
  State<youronbording1> createState() => _youronbording1State();
}

class _youronbording1State extends State<youronbording1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ysizedbox40,
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Image.asset(
            'assets/images/onbordingimage1.png',
          ),
        ),
      ysizedbox20,
        Text(
          'The safer,easier \n way to pay',
          textAlign: TextAlign.center,
          style: primaryFontsemiBold.copyWith(
            wordSpacing: 1,
            fontStyle: FontStyle.italic,
              fontSize: 27,
              color: yblue),
        ),
        ysizedbox20,
        Text(
          'Up to 10 days of buyer protction \n no need to top up your wallet \nfree return shipping and faster',
          style: TextStyle(
            height: 1.3,
              fontSize: 17,
               ),
        ),

    
      ],
    );
  }
}


class Youronbording2 extends StatelessWidget {
  const Youronbording2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ysizedbox40,
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Image.asset('assets/images/onbordingimage2.png'),
        ),
        ysizedbox20,
        Text(
          'Shop worry free \n with Payments',
          style: primaryFontsemiBold.copyWith(
            
            fontStyle: FontStyle.italic,
         
            wordSpacing: 1,
              fontSize: 25, 
              color: yblue),
        ),
        ysizedbox20,
        Text(
          'Up to 10 days of buyer protction no \n need to top up your wallet free return \n shipping and faster',
          style: TextStyle(
            height: 1.3,
               fontWeight: FontWeight.w600, fontSize: 17),
          textAlign: TextAlign.center,
        ),
      
      ],
    );
  }
}

class Youronbording3 extends StatelessWidget {
  const Youronbording3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        ysizedbox40,
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Image.asset('assets/images/onbordingimage3.png'),
        ),
        ysizedbox20,
        Text(
          'Send and request \n payment with Choice',
          textAlign: TextAlign.center,
          style: primaryFontsemiBold.copyWith(
            wordSpacing: 1,
              fontSize: 25,
              color: yblue),
        ),
        ysizedbox20,
        Text(
          'Up to 10 days of buyer protction no \n need to top up your wallet free return \n shipping and faster',
          style: TextStyle(
            height: 1.3,
               fontWeight: FontWeight.w600, fontSize: 17),
          textAlign: TextAlign.center,
        ),
       
      ],
    );
  }
}

class Youronbording4 extends StatelessWidget {
  const Youronbording4({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        ysizedbox40,
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Image.asset('assets/images/onbordingimage4.png'),
        ),
        ysizedbox20,
        Text(
          'Check out fastest \n card link in Payment',
          textAlign: TextAlign.center,
          style: primaryFontsemiBold.copyWith(
            wordSpacing: 1,
              fontSize: 25, 
              color: yblue),
        ),
        ysizedbox20,
        Text(
          'Up to 10 days of buyer protction no \n need to top up your wallet free return \n shipping and faster',
          style: TextStyle(
            height: 1.3,
               fontWeight: FontWeight.w600, fontSize: 17),
          textAlign: TextAlign.center,
        ),
       
      ],
    );
  }
}
