import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/home_page.dart';
import 'package:flutter/material.dart';

class CinemaTheather extends StatelessWidget {
  const CinemaTheather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text('Restoran / Konaklama'),
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
                child: Text('SİNEMA',style: TextStyle(color: Colors.white, fontSize: 14)),
              ), Tab(
                child: Text('TİYATRO',style: TextStyle(color: Colors.white, fontSize: 14)),
              ),
            ],
          ),
        ),
        body: const TabBarView(
            children: [
              Cinema(),
              Theather()
            ]
        ),
      ),
    );
  }
}

class Cinema extends StatelessWidget {
  const Cinema({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}

class Theather extends StatelessWidget {
  const Theather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}




