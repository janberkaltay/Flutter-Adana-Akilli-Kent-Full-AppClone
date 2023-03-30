import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/home_page.dart';
import 'package:flutter/material.dart';

class EducationUniversity extends StatelessWidget {
  const EducationUniversity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text('Eğitim / Üniversite'),
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
                child: Text('EĞİTİM',style: TextStyle(color: Colors.white, fontSize: 14)),
              ), Tab(
                child: Text('ÜNİVERSİTE',style: TextStyle(color: Colors.white, fontSize: 14)),
              ),
            ],
          ),
        ),
        body: const TabBarView(
            children: [
              Education(),
              University()
            ]
        ),
      ),
    );
  }
}

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}

class University extends StatelessWidget {
  const University({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}




