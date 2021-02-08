import 'package:active_finance/libs/Theme_service.dart';
import 'package:active_finance/views/home/widgets/charts.dart';
import 'package:active_finance/views/home/widgets/navbar.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu_open,size: 25,),
                      Text("Dashboard",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Badge(
                        toAnimate: true,
                        position: BadgePosition(top: 18,start: 15),
                        child:IconButton(
                        icon: Icon(Icons.notifications), 
                        onPressed: (){}
                      ),
                      ),
                    ],
                  ),
                ),
                Container(
                height: 200,
                width: 200,
                child: StatusCharts()),
                FlatButton(onPressed: ThemeService().switchTheme, 
                color: Colors.blueAccent,
                child: Text("Cambio de tema")),
              ],
            ),
          )
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}