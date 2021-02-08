
import 'package:active_finance/libs/Theme_service.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int itemIndex = 0;
  @override
  Widget build(BuildContext context) {
    ThemeData nowTheme = Theme.of(context);
    List<BottomNavyBarItem> items =[
      BottomNavyBarItem(
        icon: SvgPicture.asset("assets/images/dashboard.svg",
          height: 20,
          width: 20,
          color: itemIndex==0?nowTheme.textSelectionColor:Color(0xFFA8A8A8),
        ),
        title: Text("Dashboard",
          style: TextStyle(
            color: itemIndex==0?nowTheme.textSelectionColor:Color(0xFFA8A8A8),
          ),
        ),
        textAlign: TextAlign.center,
        activeColor: Color(0xFF2E8CE4)
      ),
      BottomNavyBarItem(
        icon: SvgPicture.asset("assets/images/Vector.svg",
          color: itemIndex==1?nowTheme.textSelectionColor:Color(0xFFA8A8A8),
          height: 20,
          width: 20,
        ),
        title: Text("Activitys",
           style: TextStyle(
            color: itemIndex==1?nowTheme.textSelectionColor:Color(0xFFA8A8A8),
          ),
        ),
        textAlign: TextAlign.center,
        activeColor: Color(0xFF2E8CE4)
      ),
      BottomNavyBarItem(
        icon: SvgPicture.asset("assets/images/research.svg",
          height: 20,
          width: 20,
          color: itemIndex==2?nowTheme.textSelectionColor:Color(0xFFA8A8A8),
        ),
        title: Text("Stadistic",
           style: TextStyle(
            color: itemIndex==2?nowTheme.textSelectionColor:Color(0xFFA8A8A8),
          ),
        ),
        textAlign: TextAlign.center,
        activeColor: Color(0xFF2E8CE4),
      ),
      BottomNavyBarItem(
        inactiveColor: Colors.white,
        icon: CircleAvatar(
          backgroundColor: Colors.transparent,
          maxRadius: 15,
          child: Icon(
            Icons.person,
            size: 20,
            color: itemIndex==3?nowTheme.primaryColor:Color(0xFFA8A8A8),
          ),
        ),
        title: Text("Profile",
           style: TextStyle(
            color: nowTheme.textSelectionColor
          ),
        ),
        textAlign: TextAlign.center,
        activeColor: nowTheme.buttonColor
      )
    ]; 
    
    return BottomNavyBar(
      containerHeight: 60,
      showElevation: true,
      curve: Curves.fastOutSlowIn,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      items: items,
      selectedIndex: itemIndex,
      onItemSelected: (index){
          _currentIndex(index);
        }
    );
    }
    void _currentIndex(index){
      setState(() {
        itemIndex=index;
      });
  }
}