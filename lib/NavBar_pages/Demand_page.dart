import 'package:akillikentclone/NavBar.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';

class DermandPage extends StatelessWidget {
  const DermandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Şikayet-İstek-Dilek'),
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
      ),
      body: const Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text('Bu ekran Adana Büyükşehir Belediyesi internet sitesi tarafından sağlanmaktadır'),
          )),
    );
  }
}
