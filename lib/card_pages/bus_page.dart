import 'package:akillikentclone/Bus_tabs/bus_tabs.dart';
import 'package:akillikentclone/Bus_tabs/close_stops.dart';
import 'package:akillikentclone/Bus_tabs/find_bus.dart';
import 'package:akillikentclone/Bus_tabs/special_route.dart';
import 'package:akillikentclone/Bus_tabs/warnings_tab.dart';
import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/home_page.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.teal.shade800,
          bottom: const TabBar(
            indicatorColor: Colors.white,
              tabs: [
            Tab(
              child: Text('OTOBÜSLER',style: TextStyle(color: Colors.white, fontSize: 8, fontFamily: 'BreeSerif'),),
            ),
            Tab(
              child: Text('UYARILAR (EK SERVİSLER)',style: TextStyle(color: Colors.white, fontSize: 10,fontWeight: FontWeight.w200, fontFamily: 'BreeSerif'),),
            ),
            Tab(
              child: Text('OTOBÜS BUL',style: TextStyle(color: Colors.white, fontSize: 8,fontWeight: FontWeight.w200, fontFamily: 'BreeSerif'),),
            ),
            Tab(
              child: Text('YAKIN DURAKLAR',style: TextStyle(color: Colors.white, fontSize: 9,fontWeight: FontWeight.w200, fontFamily: 'BreeSerif'),),
            ),
            Tab(
              child: Text('ÖZEL HATLAR',style: TextStyle(color: Colors.white, fontSize: 10,fontWeight: FontWeight.w200, fontFamily: 'BreeSerif'),),
            ),
          ]),
          title: const Text('Otobüs'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(icon: const Icon(Icons.search),
                onPressed: (){},),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const MyHomePage();}
                ),
                );}, icon: const Icon(Icons.home)),
            ),
          ],
        ),
     body:
       const TabBarView(children: [
          BusTab(),
          WarningsTab(),
          FindBusTab(),
          CloseStopsTab(),
          SpecialRouteTab()
     ]
     ),
      ),
    );
  }
}
