import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/home_page.dart';
import 'package:flutter/material.dart';

class GovernmentOffice extends StatelessWidget {
  const GovernmentOffice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text('Devlet Daireleri'),
          backgroundColor: Colors.cyan.shade800,
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
                child: Text('BELEDİYELER',style: TextStyle(color: Colors.white, fontSize: 14)),
              ), Tab(
                child: Text('RESMİ KURUMLAR',style: TextStyle(color: Colors.white, fontSize: 14)),
              ),
            ],
          ),
        ),
        body: const TabBarView(
            children: [
              CityHall(),
              PublicEnterpries()
            ]
        ),
      ),
    );
  }
}

class CityHall extends StatelessWidget {
  const CityHall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}

class PublicEnterpries extends StatelessWidget {
  const PublicEnterpries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}




