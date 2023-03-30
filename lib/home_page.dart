import 'package:akillikentclone/card_pages/Kentkart_filling_points_page.dart';
import 'package:akillikentclone/card_pages/balance_inquiry.dart';
import 'package:akillikentclone/card_pages/bus_page.dart';
import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/card_pages/disaster_information.dart';
import 'package:akillikentclone/card_pages/events.dart';
import 'package:akillikentclone/card_pages/metro_page.dart';
import 'package:akillikentclone/card_pages/pharmacies_on_duty.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: const Text('Ana Sayfam '),
      ),
      body: Container(
        padding:const EdgeInsets.all(2),
        color: Colors.grey.shade300,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const CardPage();
                    }
                    ),);},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        child: Container(
                          height: 135,
                          width: 180,
                         color: Colors.white,
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                color: Colors.teal.shade800,
                                child:
                                  const Text('Otobüs', style: TextStyle(color: Colors.white, fontSize: 18),),
                                ),
                              Container(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: const Icon(Icons.directions_bus, size: 70,))
                            ],
                          ),
                          ),
                        ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const DiasterPage();
                    }
                    ),);},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        child: Container(
                          height: 135,
                          width: 180,
                          color: Colors.white,
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                color: Colors.red.shade600,
                                child:
                                const Text('Afet Bilgi', style: TextStyle(color: Colors.white, fontSize: 18),),
                              ),
                              Container(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: const Icon(Icons.notifications_on_outlined, size: 70,))
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const BalanceInquiry();}
                    ),);},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        child: Container(
                          height: 135,
                          width: 180,
                          color: Colors.white,
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                color: Colors.teal.shade800,
                                child:
                                const Text('Kentkart Bakiye Sorgulama', style: TextStyle(color: Colors.white, fontSize: 14),),
                              ),
                             Container(
                                 padding: const EdgeInsets.only(top: 10),
                                 child: const Icon(Icons.credit_card_outlined, size: 70,))
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const KentkartFillingPoints();}
                    ),);},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        child: Container(
                          height: 135,
                          width: 180,
                          color: Colors.white,
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                color: Colors.teal.shade800,
                                child:
                                const Text('Kentkart Dolum Noktası', style: TextStyle(color: Colors.white, fontSize: 16),),
                              ),
                              Container(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: const Icon(FontAwesomeIcons.earthAmericas, size: 70,))
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const PharmaciesOnDuty();}
                    ),);},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        child: Container(
                          height: 135,
                          width: 180,
                          color: Colors.white,
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                color: Colors.red.shade600,
                                child:
                                const Text('Nöbetçi Eczaneler', style: TextStyle(color: Colors.white, fontSize: 18),),
                              ),
                              Container(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: const Icon(FontAwesomeIcons.kitMedical, size: 70,))
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    showDialog(context: context, builder: (context)=>
                  Center(
                    child: Card(
                      elevation: 50,
                      color: Colors.lightBlue.shade900,
                      child: SizedBox(
                        width: 350,
                        height: 220,
                        child: Column(
                          children: [
                            const Icon(Icons.slow_motion_video,size: 50,color: Colors.white,),
                            Container(
                              color: Colors.white,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('Altın Koza Film Festivali', style: TextStyle(fontSize: 14, color: Colors.grey.shade800,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent uygulamasından ayrılacaksınız. Altın Koza Film', style: TextStyle(fontSize: 12, color: Colors.black)),
                                        const Text('Festivali sayfasına yönlendirileceksiniz. Devam etmek istiyor', style: TextStyle(fontSize: 12, color: Colors.black)),
                                        const Text('musunuz?', style: TextStyle(fontSize: 12, color: Colors.black)),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 18),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: 75,
                                                  height: 40,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      color: Colors.lightBlue.shade900,
                                                    borderRadius: const BorderRadius.all(Radius.circular(12.0))
                                                  ),
                                                  child: TextButton(onPressed: (){},child: const Text('Evet',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 12),
                                                child: Container(
                                                    width: 75,
                                                    height: 40,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                        color: Colors.lightBlue.shade900,
                                                        borderRadius: const BorderRadius.all(Radius.circular(12.0))
                                                    ),
                                                    child: TextButton(onPressed: ()=> Navigator.pop(context),   child: const Text('Vazgeç',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        child: Container(
                          height: 135,
                          width: 180,
                          color: Colors.white,
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                color: Colors.lightBlue.shade900,
                                child:
                                Column(
                                  children: const [
                                    Text('Altın Koza', style: TextStyle(color: Colors.white, fontSize: 16),),
                                    Text('Film Festivali ', style: TextStyle(color: Colors.white, fontSize: 16),),
                                  ],
                                ),
                              ),
                              Container(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: const Icon(Icons.slow_motion_video_outlined, size: 70,))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const Events();}
                    ),);},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        child: Container(
                          height: 135,
                          width: 180,
                          color: Colors.white,
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                color: Colors.cyan.shade700,
                                child:
                                const Text('Etkinlikler', style: TextStyle(color: Colors.white, fontSize: 18),),
                              ),
                              Container(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: const Icon(Icons.calendar_month_sharp, size: 70,))
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const Metro();}
                    ),);},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        child: Container(
                          height: 135,
                          width: 180,
                          color: Colors.white,
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                color: Colors.teal.shade800,
                                child:
                                const Text('Metro', style: TextStyle(color: Colors.white, fontSize: 18),),
                              ),
                              Container(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: const Icon(Icons.train_sharp, size: 70,))
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
