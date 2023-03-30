import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/home_page.dart';
import 'package:flutter/material.dart';

class KentkartFillingPoints extends StatelessWidget {
  const KentkartFillingPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('Kentkart Dolum Noktası'),
      backgroundColor: Colors.teal.shade800,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const MyHomePage();}
              ),
              );
            },
            child: const Icon(
              Icons.home,
            ),
          ),
        ),
      ],
      ),
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
               Text('BU EKRAN YAKINDA GELECEKTİR',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
               Text('THİS SCREEN COMİNG SOON',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
            ],
          ),
      ),
    );
  }
}
