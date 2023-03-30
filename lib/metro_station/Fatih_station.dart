import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/metro_tabs/Fatih_Statio_tabs/Akincilar-Fatih.dart';
import 'package:akillikentclone/metro_tabs/Fatih_Statio_tabs/Fatih-Akincilar.dart';
import 'package:flutter/material.dart';

class FatihStation extends StatelessWidget {
  const FatihStation ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
            backgroundColor: Colors.teal.shade800,
            title: const Text('FATİH İSTASYONU'),
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
          FatihToAkincilar(),
          AkincilarToFatih()
        ]),
      ),
    );
  }
}
