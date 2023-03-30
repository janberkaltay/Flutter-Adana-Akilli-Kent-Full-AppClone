import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/home_page.dart';
import 'package:flutter/material.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text('Sağlık'),
        backgroundColor: Colors.red,
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
                child: Text('HASTANELER',style: TextStyle(color: Colors.white, fontSize: 12)),
              ), Tab(
                child: Text('SAĞLIK OCAKLARI',style: TextStyle(color: Colors.white, fontSize: 11)),
              ), Tab(
                child: Text('ECZANELER',style: TextStyle(color: Colors.white, fontSize:12,)),
              ),
            ],
          ),
        ),
        body: const TabBarView(
            children: [
              Hospital(),
              SaglikOcagi(),
              Pharmacies()
            ]
        ),
      ),
    );
  }
}
    class Hospital extends StatelessWidget {
      const Hospital({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return Container(
          color: Colors.white,
        );
      }
    }
    
    class SaglikOcagi extends StatelessWidget {
      const SaglikOcagi({Key? key}) : super(key: key);
    
      @override
      Widget build(BuildContext context) {
        return Container(
          color: Colors.white,
        );
      }
    }
    
    class Pharmacies extends StatelessWidget {
      const Pharmacies({Key? key}) : super(key: key);
    
      @override
      Widget build(BuildContext context) {
        return Container(
          color:Colors.white,
        );
      }
    }
    
    

