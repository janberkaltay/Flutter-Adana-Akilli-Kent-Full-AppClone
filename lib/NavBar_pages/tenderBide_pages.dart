import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/home_page.dart';
import 'package:flutter/material.dart';

class TenderBidePage extends StatelessWidget {
  const TenderBidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('İhale İlanları'),
        backgroundColor: Colors.lightBlue.shade900,
        actions: [
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
    );
  }
}
