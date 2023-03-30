import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/metro_tabs/Yesil_Yurt_station_tabs/Akincilar-YesilYurt.dart';
import 'package:akillikentclone/metro_tabs/Yesil_Yurt_station_tabs/YesilYurt-Akincilar.dart';
import 'package:flutter/material.dart';

class YesilYurtStation extends StatelessWidget {
  const YesilYurtStation ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
            backgroundColor: Colors.teal.shade800,
            title: const Text('YEŞİLYURT İSTASYONU'),
            bottom: const TabBar(
                indicatorColor: Colors.white,
                tabs:  [
                  Tab(
                    child: Text('HASTANE -> AKINCILAR',style: TextStyle(color: Colors.white, fontSize: 13,),),
                  ),
                  Tab(
                    child: Text('AKINCILAR -> HASTANE',style: TextStyle(color: Colors.white, fontSize: 13,),),
                  ),
                ])
        ),
        body: TabBarView(children: [
          YesilYurtToAkincilar(),
          AkincilarToYesilYurt()
        ]),
      ),
    );
  }
}
