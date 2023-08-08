import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';

import '../view/home_view/history/history_screen.dart';
import '../view/home_view/home_screen.dart';
import '../view/home_view/newpayee/new_payeescreen.dart';
import '../view/home_view/profile/profile_screen.dart';
import '../view/home_view/toupscreen/topup_screen.dart';

class BottumBar extends StatefulWidget {
  int index;
  BottumBar({super.key, this.index = 0});

  @override
  State<BottumBar> createState() => _BottumBarState();
}

class _BottumBarState extends State<BottumBar> {
  final BorderRadius _borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  );

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(11)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 0;
  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;

  Color selectedColor = Colors.white;
  Color unselectedColor = Colors.blue;

  List pages = [
    HomeScreen(),
    NewPayeeScreen(),
    HistoryScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    setData();
  }

  setData() {
    setState(() {
      _selectedItemPosition = widget.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ywhite,
      body: pages[_selectedItemPosition],
      bottomNavigationBar: Container(
        color: ywhite,
        height: 80,
        child: SnakeNavigationBar.color(
          backgroundColor: yindigo,
          behaviour: snakeBarStyle,
          snakeShape: snakeShape,
          shape: bottomBarShape,
          padding: padding,

          ///configuration for SnakeNavigationBar.color
          snakeViewColor: selectedColor,
          selectedItemColor:
              snakeShape == SnakeShape.indicator ? selectedColor : yindigo,
          unselectedItemColor: Colors.white,

          ///configuration for SnakeNavigationBar.gradient
          //snakeViewGradient: selectedGradient,
          //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
          //unselectedItemGradient: unselectedGradient,

          showUnselectedLabels: showUnselectedLabels,
          showSelectedLabels: showSelectedLabels,

          currentIndex: _selectedItemPosition,
          onTap: (index) => setState(() => _selectedItemPosition = index),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'New Pay'),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: 'History'),
            BottomNavigationBarItem(
                icon: Icon(Icons.podcasts), label: 'profile'),
            //    BottomNavigationBarItem(icon: Icon(CustomIcons.search), label: 'search')
          ],
        ),
      ),
    );
  }
}
