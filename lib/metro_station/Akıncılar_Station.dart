import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/metro_tabs/Ak%C4%B1nc%C4%B1lar_Station_tabs/Akincilar-Akincilar.dart';
import 'package:akillikentclone/metro_tabs/Ak%C4%B1nc%C4%B1lar_Station_tabs/Akincilar-Hastane.dart';
import 'package:flutter/material.dart';

class AkincilarStation extends StatelessWidget {
  const AkincilarStation ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
            backgroundColor: Colors.teal.shade800,
            title: const Text('AKINCILAR İSTASYONU'),
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
          AkincilarToAkincilar(),
          AkincilarToHastane()
        ]),
      ),
    );
  }
}
