import 'package:akillikentclone/NavBar.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';

class BusTab extends StatelessWidget {
  const BusTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const busName = [
      'BALCALI - TEKNOKENT', 'TEKNOKENT - BALCALI', 'BTU BALCALI','REAL - BEYCELI','BEYCELI - REAL','DSİ TOKİ - ESKİ VİLAYET',
      'ESKİ VİLAYET - DSİ TOKİ','A - BEYCELİ - BALCALI','A - BALCALI - BEYCELİ','B - BALCALI - BEYCELİ','B - BEYCELİ - BALCALI',
      'E.VILAYET - AKKUYU TOKI','AKKUYU TOKI - E.VILAYET','OPTIMUM - REAL','REAL - OPTIMUM','OPTİMUM - ÇUKUROVA HAST. ',
      'ÇUKUROVA HAST. - OPTİMUM','Y. DOĞAN - BALCALI - ATÜ','ATÜ - BALCALI - Y. DOĞAN','TAŞKÖPRÜ-KILIÇLI-KIZILKAŞ','KIZILKAŞ - KILIÇLI - TAŞKÖPRÜ',
      'A - ESKİ VİLAYET - BALCALI','A - BALCALI - ESKİ VİLAYET','B - BALCALI - ESKİ VİLAYET','B - ESKİ VİLAYET - BALCALI',
      'ESKİ VİLAYET - YENİ YAYLA','YENİ YAYLA - ESKİ VİLAYET','TAŞKÖPRÜ - BURUK MEZ. - ÜNLÜCE','ÜNLÜCE - BURUK MEZ - TAŞKÖPRÜ',
      'REAL - BALCALI - ATÜ','ATÜ - BALCALI - REAL','MOBILYACILAR - BALCALI','BALCALI - MOBILYACILAR','YEŞİLBAĞLAR- BALCALI',
      'BALCALI - YEŞİLBAĞLAR','BALCALI - REAL','REAL - BALCALI','HAVALİMANI - BEYCELİ','BEYCELİ - HAVALİMANI',
      'METAL SANAYI - MOBILYACILAR','MOBILYACILAR - METAL SANAYI','İNCIRLIK MAH. - BALCALI','BALCALI - İNCIRLIK MAH.',
      'HADIRLI - BALCALI','BALCALI - HADIRLI','AKKAPI - BALCALI','BALCALI - AKKAPI','K.OBA MEZARLIĞI - GÜLBAHÇESİ - BALCALI',
      'BALCALI - GÜLBAHÇESİ - K.OBA MEZARLIĞI','DAĞLIOĞLU - BALCALI','BALCALI - DAĞLIOĞLU','HAVALIMANI - BALCALI',
      'BALCALI - HAVALIMANI','REAL - AKKUYU TOKİ', 'AKKUYU TOKİ - REAL','E.VILAYET - REAL','REAL - E.VILAYET',
      'REAL - ATÜ','ATÜ - REAL','ATÜ - BALCALI - REAL','REAL - BALCALI - ATÜ','ŞAMBAYAT - BALCALI',
      'BALCALI - ŞAMBAYAT','BALCALI-REAL-YEŞİLOBA','YEŞİLOBA -REAL- BALCALI','HASTANELER - BALCALI - ATÜ','ATÜ - BALCALI - HASATANELER',
      'REAL - BALCALI','BALCALI - REAL','REAL - E.VILAYET','E.VILAYET - REAL','OSMANGAZI - REAL','REAL - OSMANGAZI',
      'A - GÜLBAHÇESI - ÇUKUROVA HAST.','A - ÇUKUROVA HAST. - GÜLBAHÇESI','B - ÇUKUROVA D. HAST - GÜLBAHÇESİ','B - GÜLBAHÇESİ - ÇUKUROVA D. HAST',
      'A - 2000 EVLER - ATÜ','A - ATÜ - 2000 EVLER','B - ATÜ - 2000 EVLER','B - 2000 EVLER - ATÜ','REAL - BALCALI',
      'BALCALI - REAL','FEVZİPAŞA-HASTANELER-BAL.TOKİ','BALCALI TOKİ - HASTANELER - FEVZİPAŞA','HASTANELER - K.DIKILI - GÖKÇELER',
      'GÖKÇELER - K.DIKILI - HASTANELER','SARIÇAM BELEDİYESİ - YOLGEÇEN','YOLGEÇEN - SARIÇAM BELEDİYESİ','YENİDOĞAN - SARIHUĞULAR',
      'SARIHUĞULAR - YENİDOĞAN','HAVUTLU - MENEKŞE - BALCALI','BALCALI - MENEKŞE - HAVUTLU',
      'KANARA - B.EVLERI - Ş.TOKİ', 'Ş.TOKİ - B.EVLERI - KANARA','MERKEZ OTOGAR - SARIÇAM BELEDİYE','SARIÇAM BELEDİYE - MERKEZ OTOGAR',
      'KANAL KÖPRÜ - ÇATALAN','ÇATALAN - KANAL KÖPRÜ','CIFTEMINARE - SALBAŞ','SALBAŞ - CIFTEMINARE','ÇIFTEMINARE - K.YUSUFLU',
      'K.YUSUFLU - ÇIFTEMINARE ','TAŞKÖPRÜ - GÜMÜŞYAZI - ATAKÖY','ATAKÖY - GÜMÜŞYAZI - TAŞKÖPRÜ','TAŞKÖPRÜ - HELVACI',
      'HELVACI - TAŞKÖPRÜ','TAŞKÖPRÜ - ZAĞIRLI','ZAĞIRLI - TAŞKÖPRÜ','TAŞKÖPRÜ- HEREKLİ','HEREKLİ - TAŞKÖPRÜ','TAŞKÖPRÜ - KÜRKÇÜLER',
      'KÜRKÇÜLER - TAŞKÖPRÜ','TAŞKÖPRÜ - BAKLALI','BAKLALI - TAŞKÖPRÜ','E.VİLAYET-İNCİRLİK','İNCİRLİK - E.VİLAYET',
      'TAŞKÖPRÜ - SULUCA','SULUCA - TAŞKÖPRÜ','TAŞKÖPRÜ-GEÇİTLİ-ÇELEMLİ','ÇELEMLİ - GEÇİTLİ - TAŞKÖPRÜ','KARAISALI - ÇIFTEMINARE',
      'ÇIFTEMINARE - KARAISALI','ÇİFTEMİNARE - MÜRSELOĞLU','MÜRSELOĞLU - ÇİFTEMİNARE','KANAL KÖPRÜ - KÖRÜKLÜ',
      'KÖRÜKLÜ - KANAL KÖPRÜ','TAŞKÖPRÜ-YAKAPINAR','YAKAPINAR - TAŞKÖPRÜ','KANAL KÖPRÜ - ÇİÇEKLİ','ÇİÇEKLİ - KANAL KÖPRÜ',
      'E.VILAYET - KÜÇÜKÇILDIRIM','KÜÇÜKÇILDIRIM - E.VILAYET','TAŞKÖPRÜ-ŞEYHGANİM','ŞEYHGANİM - TAŞKÖPRÜ','BALCALI - ORGANİZE MAKİNA İKMAL',
      'ORGANİZE MAKİNA İKMAL - BALCALI','K.KÖPRÜ - ÇAKALLI','ÇAKALLI - K.KÖPRÜ','AQUALAND - ÇİÇEKLİ','ÇİÇEKLİ - AQUALAND',
      'Y. OTOGAR - KARLIK','KARLIK - Y. OTOGAR','TAŞKÖPRÜ - SAYCA - OTLUK','SAYCA - OTLUK - TAŞKÖPRÜ',
      'AQUALAND-K.YOLU-KARAYUSUFLU','KARAYUSUFLU - K.YOLU - AQUALAND','KARAHAN - RUH SAĞLIĞI','RUH SAĞLIĞI - KARAHAN','ANADOLU LİSESİ - ŞAMBAYAT TOKİ',
      'ŞAMBAYAT TOKİ - ANADOLU LİSESİ','HAVA LIMANI - KOZAN','KOZAN - HAVA LIMANI','ADANA - ALADAĞ','ALADAĞ - ADANA',
      'ADANA - CEYHAN - YUMURTALIK','YUMURTALIK - CEYHAN - ADANA','TAŞKÖPRÜ - KARATAŞ - YEŞİLKÖY','YEŞİLKÖY - KARATAŞ - TAŞKÖPRÜ',
      'ADANA - POZANTI','POZANTI - ADANA','ADANA - TUZLA - TABAKLAR','TABAKLAR - TUZLA - ADANA','HAVALIMANI -ÇOKÇAPINAR -CEYHAN',
      'CEYHAN -ÇOKÇAPINAR - HAVALIMANI','ADANA - İMAMOĞLU -AKDAM','AKDAM - İMAMOĞLU - ADANA','ADANA - GERDIBI','GERDIBI - ADANA',
      'ADANA - BEYÖREN - İMAMOĞLU','İMAMOĞLU - BEYÖREN - ADANA','ADANA - TUZLA KAPI MH','TUZLA KAPI MH - ADANA','CEYHAN - K.PINARI - K.KULAĞI - İNCIRLI',
      'İNCIRLI - K.KULAĞI - K.PINARI - CEYHAN','CEYHAN - SARIMAZI','SARIMAZI - CEYHAN','CEYHAN - DUTLUPINAR - DOKUZTEKNE',
      'DOKUZTEKNE - DUTLUPINAR CEYHAN','CEYHAN - BIRKENT','BIRKENT - CEYHAN','CEYHAN - GÜNLÜCE','GÜNLÜCE - CEYHAN',
      'CEYHAN - DORUK','DORUK - CEYHAN','KOZAN - AYŞEHOCA','AYŞEHOCA - KOZAN','CEYHAN AYŞEHOCA - GAZİ','GAZİ - AYŞEHOCA CEYHAN'
    ];
    const busNumbers = [105, 105 ,106 ,110 ,110 ,111 ,111 ,112 ,112 ,112 ,112 ,
      113 ,113 ,114 ,114 ,115 ,115 ,116, 116 ,117 ,117 ,118 ,118 ,118 ,118 ,119,
      119 ,120 ,120 ,121 ,121 ,122 ,122 ,123 ,123 ,124 ,124 ,125 ,125 ,126 ,126,
      127 ,127 ,130 ,130 ,131 ,131 ,132 ,132 ,133 ,133 ,135 ,135 ,140 ,140 ,142, 142 ,144 ,144 ,151 ,151 ,153 ,153 ,154 ,
      154 ,155 ,155 ,156 ,156 ,157 ,157, 158 ,158 ,159 ,159 ,159 ,159 ,160 ,160 ,160 ,160 ,161 ,161 ,162 ,162 ,164, 164 ,
      165, 165 ,166 ,166 ,170 ,170 ,172 ,172 ,174 ,174 ,175 ,175 ,176 ,176, 177 ,177 ,178 ,178 ,179 ,179 ,180 ,180 ,181 ,
      181 ,183 ,183 , 184 ,184 ,185 ,185 ,186 ,186 ,187 ,187 ,188 ,188 ,189 ,189 ,190 ,190 ,191, 191,192 ,192 ,193 ,193 ,
      194 ,194 ,195 ,195 ,196 ,196 ,197 ,197 ,198 ,198 ,199 ,199 ,210 ,210 ,303 ,303 ,304 ,304 ,401 ,401 ,402 ,402 ,403 ,
      403 ,404 ,404 ,405 ,405 ,406 ,406 ,407 ,407 ,408 ,408 ,409 ,409 ,410 ,410 ,411 ,411 ,502 ,502 ,503 ,503 ,504 ,504 ,
      505 ,505 ,506 ,506 ,507 ,507 ,511 ,511 ,512 ,512 ,
    ];
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: busNumbers.length,
          itemBuilder: (context, index){
            return Column(
              children: [
                ListTile(
                  onTap: () => {showDialog(context: context, builder: (context)=>
                  AlertDialog(
                  title: Text('BU EKRAN HENÜZ EKLENMEDİ'),
                  actions: [
                  TextButton(onPressed: () =>Navigator.pop(context),
                  child: Text('Tamam'))
                  ],
                  content: Text('Henüz bu ekran eklenmedi ama bu eklenmeyeceği anlamına gelmiyor :)'),
                  ),
                  )},
                  title: Text(busName[index],style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                  leading: Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.teal.shade800,
                        border: Border.all(width: 4, color: Colors.teal.shade900),
                        shape: BoxShape.circle
                    ),
                    child: Text('${busNumbers[index]}',style:TextStyle(color: Colors.white, fontSize: 13) ,),
                  ),
                  trailing: IconButton(onPressed: (){
                    showDialog(context: context, builder: (context)=>
                        AlertDialog(
                          title: const Text('OTOBÜS HAREKET SAATLERİ'),
                          actions: [
                            TextButton(onPressed: () =>Navigator.pop(context),
                                child: const Text('Tamam'))
                          ],
                          content: const Text('Otobüs hareket saatleri ekranı yakında eklenecektir.'),
                        ),
                    );
                    }, icon: const Icon(Icons.alarm, size: 30, color: Colors.teal,),
                  ),
            ),
                const Divider(
                  height: 10,
                  thickness: 1,
                  indent: 2,
                  endIndent: 0,
                  color: Colors.grey,
                ),
              ],
            );
          } )
    );
  }
}
