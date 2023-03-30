import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/home_page.dart';
import 'package:flutter/material.dart';

class BusTerminalCompanies extends StatelessWidget {
  const BusTerminalCompanies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text('Otogar Firmaları'),
          backgroundColor: Colors.teal.shade800,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const MyHomePage();}
                ),
                );}, icon: const Icon(Icons.home)),
            )
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text('FİRMALAR',style: TextStyle(color: Colors.white, fontSize: 13)),
              ), Tab(
                child: Text('KOOPERATİFLER',style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
              Tab(
                child: Text('OTOGARLAR',style: TextStyle(color: Colors.white, fontSize: 13)),
              ),
            ],
          ),
        ),
        body: const TabBarView(
            children: [
              Companies(),
              Coperatives(),
              Terminals()
            ]
        ),
      ),
    );
  }
}

class Companies extends StatelessWidget {
  const Companies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}

class Coperatives extends StatelessWidget {
  const Coperatives({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}
class Terminals extends StatelessWidget {
  const Terminals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}





