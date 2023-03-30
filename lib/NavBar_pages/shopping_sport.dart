import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/home_page.dart';
import 'package:flutter/material.dart';

class ShoppingSport extends StatelessWidget {
  const ShoppingSport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text('Alışveriş / Spor'),
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
                child: Text('ALIŞVERİŞ',style: TextStyle(color: Colors.white, fontSize: 14)),
              ), Tab(
                child: Text('SPOR',style: TextStyle(color: Colors.white, fontSize: 14)),
              ),
            ],
          ),
        ),
        body: const TabBarView(
            children: [
              Shopping(),
              Spor()
            ]
        ),
      ),
    );
  }
}

class Shopping extends StatelessWidget {
  const Shopping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}

class Spor extends StatelessWidget {
  const Spor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}




