import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/home_page.dart';
import 'package:flutter/material.dart';

class BalanceInquiry extends StatelessWidget {
  const BalanceInquiry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
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
        title: const Text('Kentkart Bakiye Sorgulama'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Kentkart Numaranız:'),
            const Text('(Kentkartınızda bulunan 10 haneli numara)'),
            Container(
              height: 40,
              padding: const EdgeInsets.only(top: 10,right: 16),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'XXXXX-XXXXX',
              )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.teal.shade800,
                      border: Border.all(width: 1,color: Colors.white),
                      borderRadius: BorderRadius.circular(12.0)
                    ),
                    width: 120,
                      height: 40,
                      child: TextButton(onPressed: (){
                        showDialog(context: context, builder: (context)=> AlertDialog(
                          title: const Text('SANA SONSUZ BAKİYE'),
                        actions: [
                          TextButton(onPressed: ()=> Navigator.pop(context), child: const Text('TAMAM'))
                        ],
                          content: const Text('AMA SADECE SANA <3'),
                      ),
                      );},
                          child: const Text('Bakiye Sorgula',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)

                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
