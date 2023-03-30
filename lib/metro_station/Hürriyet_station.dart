import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/metro_tabs/H%C3%BCrriyet_station_tabs/Akincilar-H%C3%BCrriyet.dart';
import 'package:akillikentclone/metro_tabs/H%C3%BCrriyet_station_tabs/H%C3%BCrriyet-Akincilar.dart';
import 'package:flutter/material.dart';

class HurriyetStation extends StatelessWidget {
  const HurriyetStation ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
            backgroundColor: Colors.teal.shade800,
            title: const Text('HÜRRİYET İSTASYONU'),
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
        body: const TabBarView(children: [
          HurriyetToAkincilar(),
          AkincilarToHurriyet()
        ]),
      ),
    );
  }
}
