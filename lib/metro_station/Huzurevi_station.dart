import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/metro_tabs/Anadolu_lisesi_station_tabs/Akincilar-AnadoluLisesi.dart';
import 'package:akillikentclone/metro_tabs/Hastane_station_tabs/Ak%C4%B1nc%C4%B1lar-Hastane.dart';
import 'package:akillikentclone/metro_tabs/Hastane_station_tabs/Hastane-Ak%C4%B1nc%C4%B1lar.dart';
import 'package:akillikentclone/metro_tabs/Huzurevi_station_tabs/Akincilar-Huzurevi.dart';
import 'package:akillikentclone/metro_tabs/Huzurevi_station_tabs/Huzurevi-Akincilar.dart';
import 'package:flutter/material.dart';

class HuzureviStation extends StatelessWidget {
  const HuzureviStation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
            backgroundColor: Colors.teal.shade800,
            title: const Text('HUZUREVİ İSTASYONU'),
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
          HuzureviToAkincilar(),
          AkincilarToHuzurevi()
        ]),
      ),
    );
  }
}
