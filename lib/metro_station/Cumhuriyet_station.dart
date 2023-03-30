import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/metro_tabs/Cumhuriyet_Station_tabs/Ak%C4%B1nc%C4%B1lar-Cumhuriyet.dart';
import 'package:akillikentclone/metro_tabs/Cumhuriyet_Station_tabs/Cumhuriyet-Ak%C4%B1nc%C4%B1lar.dart';
import 'package:flutter/material.dart';

class CumhuriyetStation extends StatelessWidget {
  const CumhuriyetStation ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
            backgroundColor: Colors.teal.shade800,
            title: const Text('CUMHURİYET İSTASYONU'),
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
          CumhuriyetToAkincilar(),
          AkincilarToCumhuriyet()
        ]),
      ),
    );
  }
}
