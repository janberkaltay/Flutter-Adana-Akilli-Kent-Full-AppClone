import 'package:akillikentclone/NavBar_pages/Bus_Terminal_Companies.dart';
import 'package:akillikentclone/NavBar_pages/Demand_page.dart';
import 'package:akillikentclone/NavBar_pages/Health_page.dart';
import 'package:akillikentclone/NavBar_pages/Waste_repot.dart';
import 'package:akillikentclone/NavBar_pages/about_app_page.dart';
import 'package:akillikentclone/NavBar_pages/about_foundation.dart';
import 'package:akillikentclone/NavBar_pages/banks.dart';
import 'package:akillikentclone/NavBar_pages/cinema_theather.dart';
import 'package:akillikentclone/NavBar_pages/culture_art.dart';
import 'package:akillikentclone/NavBar_pages/education_university.dart';
import 'package:akillikentclone/NavBar_pages/government_office.dart';
import 'package:akillikentclone/NavBar_pages/historical_tourist_attractions.dart';
import 'package:akillikentclone/NavBar_pages/notification.dart';
import 'package:akillikentclone/NavBar_pages/resaurant_accommodation.dart';
import 'package:akillikentclone/NavBar_pages/shopping_sport.dart';
import 'package:akillikentclone/NavBar_pages/tenderBide_pages.dart';
import 'package:akillikentclone/card_pages/Kentkart_filling_points_page.dart';
import 'package:akillikentclone/card_pages/balance_inquiry.dart';
import 'package:akillikentclone/card_pages/disaster_information.dart';
import 'package:akillikentclone/card_pages/events.dart';
import 'package:akillikentclone/card_pages/metro_page.dart';
import 'package:akillikentclone/card_pages/pharmacies_on_duty.dart';
import 'package:akillikentclone/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'NavBar_pages/mayor_page.dart';
import 'card_pages/bus_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/adana_gece.jpg'),
                fit: BoxFit.cover,
              )
          ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Image(image: AssetImage('assets/abb_logo.png'),
                  width: 75,
                  height: 75),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('ADANA BÜYÜKŞEHİR', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    Text('BELEDİYESİ', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                    Text('AKILLI KENT UYGULAMASI', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.house),
            title: const Text('Ana Sayfa'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const MyHomePage();
    }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.bell),
            title: const Text('Afet Bilgi'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const DiasterPage();
              }))
            },
          ),
          Divider(
            height: 20,
            thickness: 1.5,
            indent: 2,
            endIndent: 0,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 8),
            child: Text('01 ÇÖZÜM (Hizmetler)', style: TextStyle(color: Colors.grey.shade500),),
          ),

          ListTile(
            leading: const Icon(FontAwesomeIcons.reply),
            title: const Text('01 Çözüm Anasayfa'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.circleQuestion),
            title: const Text('Hal Günlük Rayiç Bedeli'),
            onTap: () => {
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
                            const Image(image: AssetImage('assets/abb_logo.png'),
                            height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('Hal Günlük Rayiç Bedeli', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent uygulamasından ayrılacaksınız. Hal Rayiç Bedelleri', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('sayfasına yönlendirileceksiniz. Devam etmek istiyor musunuz?', style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.fileCircleQuestion),
            title: const Text('İş Yeri Ruhsat İşlemleri'),
            onTap: () => {
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
                            const Image(image: AssetImage('assets/abb_logo.png'),
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('İş Yeri Ruhsat İşlemleri', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent uygulamasından ayrılacaksınız. İş Yeri Ruhsat', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('işlemler sayfasına yönlendirileceksiniz. Devam etmek istiyor', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text(' musunuz?',style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.anchor),
            title: const Text('Denizcilik ve iç Su Hizmetleri'),
            onTap: () => {
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
                            const Image(image: AssetImage('assets/abb_logo.png'),
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('Denizcilik ve İç Su Hizmetleri', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent uygulamasından ayrılacaksınız. Denizcilik ve İç Su', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('Hizmetleri sayfasına yönlendirileceksiniz. Devam etmek istiyor', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('musunuz?',style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )

            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.listCheck),
            title: const Text('İş Talepleri'),
            onTap: () => {
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
                            const Image(image: AssetImage('assets/abb_logo.png'),
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('İş Talepleri', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent uygulamasından ayrılacaksınız. İş Talepleri sayfasına', style: TextStyle(fontSize: 11, color: Colors.white)),
                                        const Text('yönlendirileceksiniz. Devam etmek istiyor musunuz?', style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.personDigging),
            title: const Text('Altyapı Hizmetleri'),
            onTap: () => {
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
                            const Image(image: AssetImage('assets/abb_logo.png'),
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('Altyapı ve Koordinasyon Hizmetleri', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent uygulamasından ayrılacaksınız. Altyapı ve', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('Koordinasyon sayfasına yönlendirileceksiniz. Devam etmek', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('istiyor musunuz?',style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.taxi),
            title: const Text('Ticari Araç İşlemleri'),
            onTap: () => {
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
                            const Image(image: AssetImage('assets/abb_logo.png'),
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('Ticari Araç İşlemleri', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent uygulamasından ayrılacaksınız. Ticari Araç İşlemleri', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('sayfasına yönlendirileceksiniz. Devam etmek istiyor musunuz?', style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(Icons.wine_bar),
            title: const Text('Evlendirme Şube Müdürlüğü'),
            onTap: () => {
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
                            const Image(image: AssetImage('assets/abb_logo.png'),
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('Evlendirme Şube Müdürlüğü', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent uygulamasından ayrılacaksınız. Evlendirme Şube', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('Müdürlüğü sayfasına yönlendirileceksiniz. Devam etmek istiyor', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('musunuz?',style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.treeCity),
            title: const Text('Kent Estetiği ve Dönüşüümü'),
            onTap: () => {
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
                            const Image(image: AssetImage('assets/abb_logo.png'),
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('Kent Estetiği ve Dönüşüümü', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent uygulamasından ayrılacaksınız. Kent Estetiği ve', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('Kentsel Dönüşüm sayfasına yönlendirileceksiniz.Devam etmek', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('istiyor musunuz?',style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.wheelchair),
            title: const Text('Tekerlekli Sandalye Başvuru'),
            onTap: () => {
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
                            const Image(image: AssetImage('assets/abb_logo.png'),
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('Tekerlekli Sandalye Başvuru', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent uygulamasından ayrılacaksınız. Tekerlekli Sandalye', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('Başvurusu sayfasına yönlendirileceksiniz.Devam etmek istiyor', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('musunuz?',style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.spider),
            title: const Text('Sinekle Mücadele Çalışmaları'),
            onTap: () => {
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
                            const Image(image: AssetImage('assets/abb_logo.png'),
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('Sinekle Mücadele Çalışmaları', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent uygulamasından ayrılacaksınız. Sinek ve Haşere', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('Mücadele Çalışmaları sayfasına yönlendirileceksiniz.Devam ', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('etmek istiyor musunuz?',style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.stamp),
            title: const Text('Muhtarlıklar'),
            onTap: () => {
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
                            const Image(image: AssetImage('assets/abb_logo.png'),
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('Muhtarlık Bilgi Sistemi', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent uygulamasından ayrılacaksınız. Muhtarlık Bilgi', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('Sistemi sayfasına yönlendirileceksiniz.Devam etmek istiyor', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('musunuz?',style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.wifi),
            title: const Text('Wifi Erişim Noktaları'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.personPraying),
            title: const Text('Mezarlıklar'),
            onTap: () => {
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
                            const Image(image: AssetImage('assets/abb_logo.png'),
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('Mezarlıklar Defin İşlemleri', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent uygulamasından ayrılacaksınız. Mezarlıklar Defin', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('İşlemleri sayfasına yönlendirileceksiniz.Devam etmek istiyor', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('musunuz?',style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          Divider(
            height: 20,
            thickness: 1.5,
            indent: 2,
            endIndent: 0,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 8),
            child: Text('ŞEHİR REHBERİM', style: TextStyle(color: Colors.grey.shade500),),
          ),
          ListTile(
            leading: const Icon(Icons.slow_motion_video_outlined),
            title: const Text('Altın Koza Film Festivali'),
            onTap: () => {
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
            color: Colors.grey.shade900,
            width: 350,
            height: 170,
            child: Column(
            children: [
            const Padding(
            padding: EdgeInsets.only(top:14, bottom: 20),
            child: Text('Altın Koza Film Festivali', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
            ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text('Akıllı Kent uygulamasından ayrılacaksınız. Altın Koza Film', style: TextStyle(fontSize: 12, color: Colors.white)),
            const Text('Festivali sayfasına yönlendirileceksiniz. Devam etmek istiyor', style: TextStyle(fontSize: 12, color: Colors.white)),
            const Text('musunuz?', style: TextStyle(fontSize: 12, color: Colors.white)),
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
            )
          },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_month_sharp),
            title: const Text('Etkinlikler'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const Events();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.truckMedical),
            title: const Text('Sağlık'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const HealthPage();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.kitMedical),
            title: const Text('Nöbetçi Eczaneler'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const PharmaciesOnDuty();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.utensils),
            title: const Text('Restoranlar / Konaklama'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const RestaourantAccommmodation();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.film),
            title: const Text('Sinemalar / Tiyatrolar'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const CinemaTheather();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.cartShopping),
            title: const Text('Alışveriş / Spor'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const ShoppingSport();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.masksTheater),
            title: const Text('Kültür & Sanat'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const CultureArt();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.graduationCap),
            title: const Text('Eğitim / Üniversiteler'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const EducationUniversity();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.mosque),
            title: const Text('Namaz Vakitleri / Camiler'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.buildingColumns),
            title: const Text('Bankalar'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const Banks();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.building),
            title: const Text('Devlet Daireleri'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const GovernmentOffice();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.personWalking),
            title: const Text('Tarihi ve Turistik Yerler'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const HistoricalTouristAttractions();
              }))
            },
          ),
          Divider(
            height: 20,
            thickness: 1.5,
            indent: 2,
            endIndent: 0,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 8),
            child: Text('ULAŞIM', style: TextStyle(color: Colors.grey.shade500),),
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.creditCard),
            title: const Text('Kentkart Bakiye Sorgulama'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const BalanceInquiry();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.earthAmericas),
            title: const Text('Kentkart Dolum Noktası'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const KentkartFillingPoints();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.idCard),
            title: const Text('Seyehat Kartı'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.bus),
            title: const Text('Otobüs'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const CardPage();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.turkishLiraSign),
            title: const Text('Ücret Tarifeleri'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.taxi),
            title: const Text('Taksi'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.train_sharp,),
            title: const Text('Metro'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const Metro();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.blenderPhone),
            title: const Text('Otogar Firmaları'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const BusTerminalCompanies();
              }))
            },
          ),
          ListTile(
            leading: const Icon(Icons.traffic_outlined),
            title: const Text('Trafik Yoğunluğu'),
            onTap: () => {},
          ),
          Divider(
            height: 20,
            thickness: 1.5,
            indent: 2,
            endIndent: 0,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 8),
            child: Text('İNTERAKTİF', style: TextStyle(color: Colors.grey.shade500),),
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.internetExplorer),
            title: const Text('E-Belediye'),
            onTap: () => {
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
                            const SizedBox(
                              height: 50,
                                child: Icon(FontAwesomeIcons.internetExplorer,)),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('E-Belediye', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent uygulamasından ayrılacaksınız. Adana Bğyğkşehir', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('Belediyesi E-Belediye sayfasına yönlendirileceksiniz.Devam', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('etmek istiyor musunuz?',style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.phone),
            title: const Text('ALO 153'),
            onTap: () => {
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
                            const SizedBox(
                                height: 50,
                                child: Icon(FontAwesomeIcons.internetExplorer,)),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('ALO 153', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('ALO 153 ü aramak istiyor musunuz?', style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.message),
            title: const Text('Şikayet / İstek / Dilek'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const DermandPage();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.camera),
            title: const Text('Çek Gönder'),
            onTap: () => {
              showDialog(context: context, builder: (context)=>
                  Center(
                    child: Card(
                      elevation: 50,
                      color: Colors.lightBlue.shade900,
                      child: SizedBox(
                        width: 350,
                        height: 300,
                        child: Column(
                          children: [
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 300,
                              child: Column(
                                children: [
                                  const Image(image: AssetImage('assets/WhatsApp çek gönder.png'),
                                    height: 250,
                                      width: 320),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
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
                                              child: TextButton(onPressed: (){},child: const Text('KAPAT',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 12),
                                            child: Container(
                                                width: 150,
                                                height: 40,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: Colors.green.shade400,
                                                    borderRadius: const BorderRadius.all(Radius.circular(12.0))
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: [
                                                    const Icon(FontAwesomeIcons.whatsapp),
                                                    TextButton(onPressed: ()=> Navigator.pop(context),   child: const Text('WHATSAPP GİT',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                                                  ],
                                                )
                                            ),
                                          ),],
                                      )],
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.recycle),
            title: const Text('Atık Bildir'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const WasteReport();
              }))
            },
          ),
          Divider(
            height: 20,
            thickness: 1.5,
            indent: 2,
            endIndent: 0,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 8),
            child: Text('ASKİ', style: TextStyle(color: Colors.grey.shade500),),
          ),
          ListTile(
            leading: const Icon(Icons.water_drop),
            title: const Text('ASKİ Mobil Uygulama'),
            onTap: () => {
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
                            Image.asset('assets/askilogo.png',
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('Adana ASKİ Mobil', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent Uygulamasından ayrılacaksınız. Adana Aski Mobil', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('uygulama indirme sayfasına yönlendirileceksiniz.Devam etmek', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('istiyor musunuz?', style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.moneyBillTransfer),
            title: const Text('ASKİ Fatura Ödeme'),
            onTap: () => {
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
                            Image.asset('assets/askilogo.png',
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('ASKİ', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent Uygulamasından ayrılacaksınız. ASKİ Ödeme', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('sayfasına yönlendirileceksiniz.Devam etmek istiyor musunuz?', style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.solidCalendarDays),
            title: const Text('ASKİ Online Randevu'),
            onTap: () => {
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
                            Image.asset('assets/askilogo.png',
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('ASKİ ONLİNE RANDEVU', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent Uygulamasından ayrılacaksınız.ASKİ Online Randevu', style: TextStyle(fontSize: 11, color: Colors.white)),
                                        const Text('sayfasına yönlendirileceksiniz.Devam etmek istiyor musunuz?', style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.wheelchair),
            title: const Text('65 Yaş Üzeri ve Engelli Başvuru'),
            onTap: () => {
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
                            Image.asset('assets/askilogo.png',
                            height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('ASKİ 65 YAŞ ÜSTÜ VE ENGELLİ RANDEVU', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent Uygulamasından ayrılacaksınız.Aski Altmış Beş yaş', style: TextStyle(fontSize: 11, color: Colors.white)),
                                        const Text('Üstü ve Engelli Randevu sayfasına yönlendirileceksiniz.Devam', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('etmek istiyor musunuz?', style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.circleInfo),
            title: const Text('Aski Bilgi Edinme'),
            onTap: () => {
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
                            Image.asset('assets/askilogo.png',
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('Aski Bilgi Edinme', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent Uygulamasından ayrılacaksınız.Aski Bilgi Edinme', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('sayfasına yönlendirileceksiniz.Devam etmek istiyor musunuz?', style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.solidCircleQuestion),
            title: const Text('Sık Sorulan Sorular'),
            onTap: () => {
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
                            Image.asset('assets/askilogo.png',
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('SIK SORULAN SORULAR', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent Uygulamasından ayrılacaksınız.Aski Sık Sorulan', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('Sorular sayfasına yönlendirileceksiniz.Devam etmek istiyor', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('musunuz?', style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.phone),
            title: const Text('ALO 185 Aski İhbar'),
            onTap: () => {
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
                            Image.asset('assets/askilogo.png',
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('ALO 185', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('ALO 185 i aramak istiyor musunuz?', style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.whatsapp),
            title: const Text('Aski WhatsApp'),
            onTap: () => {},
          ),
          Divider(
            height: 20,
            thickness: 1.5,
            indent: 2,
            endIndent: 0,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 8),
            child: Text('BELEDİYE', style: TextStyle(color: Colors.grey.shade500),),
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.scaleBalanced),
            title: const Text('Başkan'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const MayorPage();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.buildingCircleExclamation),
            title: const Text('Kurum Hakkında'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const AboutFoundation();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.solidFileLines),
            title: const Text('İhale İlanları'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const TenderBidePage();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.bullhorn),
            title: const Text('Duyurular'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.solidNewspaper),
            title: const Text('Haberler'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.bell),
            title: const Text('Bildirimler'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const NotificationPage();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.phoneVolume),
            title: const Text('İletişim'),
            onTap: () => {},
          ),
          Divider(
            height: 20,
            thickness: 1.5,
            indent: 2,
            endIndent: 0,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 8),
            child: Text('HAKKIMIZDA', style: TextStyle(color: Colors.grey.shade500),),
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.circleInfo),
            title: const Text('Uygulama Hakkında'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const AboutApp();
              }))
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.youtube),
            title: const Text('YouTube'),
            onTap: () => {
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
                            Image.asset('assets/abb_logo.png',
                              height: 50,),
                            Container(
                              color: Colors.grey.shade900,
                              width: 350,
                              height: 170,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top:14, bottom: 20),
                                    child: Text('YouTube', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Akıllı Kent Uygulamasından ayrılacaksınız. Adana Büyükşehir', style: TextStyle(fontSize: 12, color: Colors.white)),
                                        const Text('Belediyesi YouTube kanalına yönlendirileceksiniz.Devam etmek', style: TextStyle(fontSize: 11, color: Colors.white)),
                                        const Text('istiyor musunuz?', style: TextStyle(fontSize: 12, color: Colors.white)),
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
                                              ),],
                                          ),
                                        )],
                                    ),
                                  ),],
                              ),
                            )],
                        ),
                      ),
                    ),
                  )
              )
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.facebook),
            title: const Text('Facebook'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.twitter),
            title: const Text('Twitter'),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
