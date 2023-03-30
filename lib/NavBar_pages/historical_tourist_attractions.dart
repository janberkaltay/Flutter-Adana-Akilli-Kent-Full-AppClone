import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/home_page.dart';
import 'package:flutter/material.dart';

class HistoricalTouristAttractions extends StatelessWidget {
  const HistoricalTouristAttractions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.green.shade600,
        title: const Text('Tarihi ve Turistik Yerler'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
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
    );
  }
}
