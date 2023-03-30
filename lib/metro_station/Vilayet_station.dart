import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/metro_tabs/Vilayet_station_tabs/Akincilar-Vilayet.dart';
import 'package:flutter/material.dart';

import '../metro_tabs/Vilayet_station_tabs/Vilayet-Akincilar.dart';

class VilayetStation extends StatelessWidget {
  const VilayetStation ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
            backgroundColor: Colors.teal.shade800,
            title: const Text('VİLAYET İSTASYONU'),
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
          VilayetToAkincilar(),
          AkincilarToVilayet()
        ]),
      ),
    );
  }
}
