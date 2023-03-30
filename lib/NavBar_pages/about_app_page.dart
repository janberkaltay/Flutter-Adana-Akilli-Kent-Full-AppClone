import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/home_page.dart';
import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: const Text('Uygulama Hakkında'),
      actions: [
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const MyHomePage();
          }));
        }, icon: const Icon(Icons.home))
      ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Image(image: AssetImage('assets/abb_logo.png'),
              width: 175,
              height: 175,),
            ),
            Text('Adana Büyükşşehir Belediyesi - Akıllı Kent ',style: TextStyle(color: Colors.black45)),
            Text('Uygulamasında yer alan konumlar, telefonlar vb',style: TextStyle(color: Colors.black45)),
            Text('tüm içerikler bilgilendirme amaçlıdır. Doğabilecek',style: TextStyle(color: Colors.black45)),
            Text('zararlardan Adana Büyükşehir Belediyesi sorumlu',style: TextStyle(color: Colors.black45)),
            Text('tutulmaz',style: TextStyle(color: Colors.black45)),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('Tüm hakları Adana Büyükşehir Belediyesine aittir',style: TextStyle(color: Colors.black45)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text('www.adana.bel.tr'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text('GİZLİLİK POLİTİKAMIZ'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text('www.adana.bel.tr/tr/privacypolicy'),
            ),
          ],
        ),
      ),
    );
  }
}
