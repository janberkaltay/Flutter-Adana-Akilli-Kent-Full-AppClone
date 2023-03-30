import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/home_page.dart';
import 'package:flutter/material.dart';

class DiasterPage extends StatelessWidget {
  const DiasterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Afet Bilgi'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return  const MyHomePage();}
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
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(12),
          color: Colors.purpleAccent,
            child: const Text('BU EKRAN ADANA BÜYÜKŞEHİR BELEDİYESİNİN İNTERNET SİTESİNİN AFET BİLGİ EKRANINDAN SAĞLANMAKTADIR. ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white),)),
      )
    );
  }
}
