import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/metro_tabs/%C4%B0stiklal_Station_tabs/%C4%B0stiklal-Akincilar.dart';
import 'package:akillikentclone/metro_tabs/%C4%B0stiklal_Station_tabs/Akincilar-%C4%B0stiklarl.dart';
import 'package:flutter/material.dart';

class IstiklalStation extends StatelessWidget {
  const IstiklalStation ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
            backgroundColor: Colors.teal.shade800,
            title: const Text('İSTİKLAL İSTASYONU'),
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
          IstiklalToAkincilar(),
          AkincilarToIstiklal()
        ]),
      ),
    );
  }
}
