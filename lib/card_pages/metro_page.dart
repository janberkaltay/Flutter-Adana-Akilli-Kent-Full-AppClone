import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/home_page.dart';
import 'package:akillikentclone/metro_station/%C4%B0stiklal_station.dart';
import 'package:akillikentclone/metro_station/Ak%C4%B1nc%C4%B1lar_Station.dart';
import 'package:akillikentclone/metro_station/Cumhuriyet_station.dart';
import 'package:akillikentclone/metro_station/Fatih_station.dart';
import 'package:akillikentclone/metro_station/H%C3%BCrriyet_station.dart';
import 'package:akillikentclone/metro_station/Huzurevi_station.dart';
import 'package:akillikentclone/metro_station/Kocavezir_station.dart';
import 'package:akillikentclone/metro_station/Vilayet_station.dart';
import 'package:akillikentclone/metro_station/Ye%C5%9FilYurt_station.dart';
import 'package:akillikentclone/metro_station/Yurt_Station.dart';
import 'package:akillikentclone/metro_station/anadoluLisesi_station.dart';
import 'package:akillikentclone/metro_station/hastane_station.dart';
import 'package:akillikentclone/metro_station/maviBulvar_station.dart';
import 'package:flutter/material.dart';

class Metro extends StatelessWidget {
  const Metro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.teal.shade800,
        title: const Text('Metro'),
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
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * 0.5,
                    color: Colors.black,
                    child: const Center(
                    child: Text('Bu ekran yakında eklenecektir',style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold))
                ),
              ),
            Container(
              color: Colors.grey.shade300,
              padding: const EdgeInsets.symmetric(horizontal: 2),
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.5,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 4, right: 4),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 390,
                        decoration: BoxDecoration(
                            color: Colors.teal.shade200,
                            borderRadius: const BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: ListTile(
                          onTap: (){},
                          title: const Text('HASTANE İSTASYONU', style: TextStyle(fontSize: 14),),
                          trailing: Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade800,
                                  border: Border.all(width: 1, color: Colors.teal.shade900),
                                  borderRadius: const BorderRadius.all(Radius.circular(12.0))
                              ),
                              child: TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const HastaneStation();
                              })); }, child: const Text('Sefer Saatleri', style: TextStyle(color: Colors.white, fontSize: 10),))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 4, right: 4),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 390,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: ListTile(
                          title: const Text('ANADOLU LİSESİ İSTASYONU', style: TextStyle(fontSize: 14),),
                          trailing: Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade800,
                                  border: Border.all(width: 1, color: Colors.teal.shade900),
                                  borderRadius: const BorderRadius.all(Radius.circular(12.0))
                              ),
                              child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const AnadoluLisesiStation();
                              })); }, child: const Text('Sefer Saatleri', style: TextStyle(color: Colors.white, fontSize: 10),))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 4, right: 4),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 390,
                        decoration: BoxDecoration(
                            color: Colors.teal.shade200,
                            borderRadius: const BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: ListTile(
                          title: const Text('HUZUREVİ İSTASYONU', style: TextStyle(fontSize: 14),),
                          trailing: Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade800,
                                  border: Border.all(width: 1, color: Colors.teal.shade900),
                                  borderRadius: const BorderRadius.all(Radius.circular(12.0))
                              ),
                              child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const HuzureviStation();
                              }));}, child:const Text('Sefer Saatleri', style: TextStyle(color: Colors.white, fontSize: 10),))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 4, right: 4),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 390,

                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: ListTile(
                          title: const Text('MAVİ BULVAR İSTASYONU ', style: TextStyle(fontSize: 14),),
                          trailing: Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade800,
                                  border: Border.all(width: 1, color: Colors.teal.shade900),
                                  borderRadius: const BorderRadius.all(Radius.circular(12.0))
                              ),
                              child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const MaviBulvar();
                              }));}, child: const Text('Sefer Saatleri', style: TextStyle(color: Colors.white, fontSize: 10),))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 4, right: 4),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 390,
                        decoration: BoxDecoration(
                            color: Colors.teal.shade200,
                            borderRadius: const BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: ListTile(
                          title: const Text('YURT İSTASYONU', style: TextStyle(fontSize: 14),),
                          trailing: Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade800,
                                  border: Border.all(width: 1, color: Colors.teal.shade900),
                                  borderRadius: const BorderRadius.all(Radius.circular(12.0))
                              ),
                              child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const YurtStation();
                              }));}, child: const Text('Sefer Saatleri', style: TextStyle(color: Colors.white, fontSize: 10),))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 4, right: 4),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 390,

                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: ListTile(
                          title: const Text('YEŞİLYURT İSTASYONU', style: TextStyle(fontSize: 14),),
                          trailing: Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade800,
                                  border: Border.all(width: 1, color: Colors.teal.shade900),
                                  borderRadius: const BorderRadius.all(Radius.circular(12.0))
                              ),
                              child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const YesilYurtStation();
                              }));}, child: const Text('Sefer Saatleri', style: TextStyle(color: Colors.white, fontSize: 10),))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 4, right: 4),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 390,
                        decoration: BoxDecoration(
                            color: Colors.teal.shade200,
                            borderRadius: const BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: ListTile(
                          title: const Text('FATİH İSTASYONU ', style: TextStyle(fontSize: 14),),
                          trailing: Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade800,
                                  border: Border.all(width: 1, color: Colors.teal.shade900),
                                  borderRadius: const BorderRadius.all(Radius.circular(12.0))
                              ),
                              child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const FatihStation();
                              }));}, child: const Text('Sefer Saatleri', style: TextStyle(color: Colors.white, fontSize: 10),))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 4, right: 4),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 390,

                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:  BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: ListTile(
                          title:const Text('VİLAYET İSTASYONU', style: TextStyle(fontSize: 14),),
                          trailing: Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade800,
                                  border: Border.all(width: 1, color: Colors.teal.shade900),
                                  borderRadius: const BorderRadius.all(Radius.circular(12.0))
                              ),
                              child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const VilayetStation();
                              }));}, child:const Text('Sefer Saatleri', style: TextStyle(color: Colors.white, fontSize: 10),))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 4, right: 4),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 390,
                        decoration: BoxDecoration(
                            color: Colors.teal.shade200,
                            borderRadius: const BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: ListTile(
                          title: const Text('İSTİKLAL İSTASYONU', style: TextStyle(fontSize: 14),),
                          trailing: Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade800,
                                  border: Border.all(width: 1, color: Colors.teal.shade900),
                                  borderRadius: const BorderRadius.all(Radius.circular(12.0))
                              ),
                              child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const IstiklalStation();
                              }));}, child: const Text('Sefer Saatleri', style: TextStyle(color: Colors.white, fontSize: 10),))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 4, right: 4),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 390,

                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: ListTile(
                          title: const Text('KOCAVEZİR İSTASYONU', style: TextStyle(fontSize: 14),),
                          trailing: Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade800,
                                  border: Border.all(width: 1, color: Colors.teal.shade900),
                                  borderRadius: const BorderRadius.all(Radius.circular(12.0))
                              ),
                              child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const KocavezirStation();
                              }));}, child: const Text('Sefer Saatleri', style: TextStyle(color: Colors.white, fontSize: 10),))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 4, right: 4),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 390,
                        decoration: BoxDecoration(
                            color: Colors.teal.shade200,
                            borderRadius: const BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: ListTile(
                          title: const Text('HÜRRİYET İSTASYONU', style: TextStyle(fontSize: 14),),
                          trailing: Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade800,
                                  border: Border.all(width: 1, color: Colors.teal.shade900),
                                  borderRadius: const BorderRadius.all(Radius.circular(12.0))
                              ),
                              child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const HurriyetStation();
                              }));}, child: const Text('Sefer Saatleri', style: TextStyle(color: Colors.white, fontSize: 10),))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 4, right: 4),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 390,

                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: ListTile(
                          title: const Text('CUMHURİYET İSTASYONU', style: TextStyle(fontSize: 14),),
                          trailing: Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade800,
                                  border: Border.all(width: 1, color: Colors.teal.shade900),
                                  borderRadius: const BorderRadius.all(Radius.circular(12.0))
                              ),
                              child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const CumhuriyetStation();
                              }));}, child:const Text('Sefer Saatleri', style: TextStyle(color: Colors.white, fontSize: 10),))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 390,
                        decoration: BoxDecoration(
                            color: Colors.teal.shade200,
                            borderRadius: const BorderRadius.all(Radius.circular(6.0))
                        ),
                        child: ListTile(
                          title: const Text('AKINCILAR İSTASYONU', style: TextStyle(fontSize: 14),),
                          trailing: Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade800,
                                  border: Border.all(width: 1, color: Colors.teal.shade900),
                                  borderRadius: const BorderRadius.all(Radius.circular(12.0))
                              ),
                              child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const AkincilarStation();
                              }));}, child: const Text('Sefer Saatleri', style: TextStyle(color: Colors.white, fontSize: 10),))
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ),
          ],
    ),
      ),
    );
  }
}
