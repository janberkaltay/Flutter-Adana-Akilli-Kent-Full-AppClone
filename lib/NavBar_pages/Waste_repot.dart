import 'package:akillikentclone/NavBar.dart';
import 'package:flutter/material.dart';
import '../home_page.dart';

class WasteReport extends StatelessWidget {
  const WasteReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.green.shade600,
        title: const Text('Atık Bildir'),
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
      ),
    );
  }
}
