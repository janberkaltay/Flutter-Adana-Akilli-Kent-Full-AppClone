import 'package:akillikentclone/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../home_page.dart';

class AboutFoundation extends StatelessWidget {
  const AboutFoundation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.lightBlue.shade900,
          title: const Text('Kurum Hakkında'),
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
          bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Text('TARİHÇEMİZ',style: TextStyle(color: Colors.white, fontSize: 14)),
                ), Tab(
                  child: Text('MİSYON & VİZYON',style: TextStyle(color: Colors.white, fontSize: 14)),
                ),
              ]),
        ),
        body: const TabBarView(
            children: [
              Historically(),
              MissionsAndVisions()
            ]
        ),
      ),
    );
  }
}

class Historically extends StatelessWidget {
  const Historically({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(top: 12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6, left: 8, right: 8),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10, right: 30),
                    child: Text('1840 yılına kadar bugünkü anlamda belediye hizmetlerini yerine getiren bir kurum yoktu.',style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10, right: 30),
                    child: Text('Kamu hizmetlerinin yerine getirilmesinde, mutasarrıf ve valilerin direktiflerine göre hareket edilir , vakıfların sosyal amaçlı faaliyetlerinden yararlanılırdı.',style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text('1833-1840 yılları arasında Adana’ya hakim olan Mısırlı İbrahim döneminde vakıflara da çeki düzen verildi ve hizmetler yelpazesi arttırıldı. '
                        'XIX’uncu yüzyılın ikinci yarısına girilirken, bugünkü vilayet sınırları içinde 350 kadar vakıf bulunmakta idi '
                        've bunlardan 55 tanesi çeşitli yörelere su sağlamak üzere görev üstlenmişti. Yine, 14 tanesi Eğitime yönelik '
                        'etkin hizmetler verirken 5 tanesi bina ve yapım işlerine bakıyor , 2 ‘ si de aşevi ve han gibi kurumları yönetiyordu.',style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text('1860 yılında patlayan Amerikan İç Savaşı, Adana’yı önemli ölçüde etkilemişti. Başta İngiltere olmak üzere, Avrupa ‘nın en çok gelir getiren '
                        'endüstrisi tekstil için gerekli pamuk Amerika ‘ dan geliyordu. Amerika, karın tokluğuna çalıştırdığı Afrikalı köleler sayesinde binlerce ton ürünü üstelik '
                        'çok ta ucuza mal edebiliyordu. İç Savaş nedeniyle stoklar hızla erirken yenisi yetiştirilemiyordu. Avrupa, gerçek anlamda panik yaşamaya başlamıştı ki, İngiliz, '
                        'Fransız ve Alman heyetleri peş peşe saraya gelip Padişahtan Adana ve Mısır’ da pamuk ekimini teşvik için özel imkanlar kopardılar .1863 ‘ten itibaren de yüzlerce '
                        'Avrupalı Adana’ya gelince kentin genel görünümü çok değişti. Yeni gereksinimler ortaya çıktı. Levanten denilen Avrupalılar daha modern bir kent yaşamı için bildiklerini '
                        'ortaya koyarken para ve malzeme desteğinde de yarışa girmişlerdi. Çünkü her ülke, Adana ‘ da kendi mutlak üstünlüğü için elinden geleni yapıyordu.',style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10, right: 15),
                    child: Text('Muhtesiplikle gelen yenilik, 1871 yılında Adana Belediyesi olarak yeni formuna kavuştu. Aynı zamanda, pek benimsenmemesi üzerine Atana ismi bu kez Adana oldu.',style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text('İlk Belediye Başkanlığına da Gözlüklü Süleyman Efendi getirildi. Belediye Başkanı, o güne kadar hiç tanınmamış yepyeni kavramlarla uğraşmak yerine, muhtesiplik yönetimini devam ettirmekle yetindi.',style: TextStyle(fontSize: 12),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10, right: 36),
                    child: Text('İlk Belediye Başkanlığına da Gözlüklü Süleyman Efendi getirildi. Belediye Başkanı, o güne kadar hiç tanınmamış yepyeni kavramlarla uğraşmak yerine, muhtesiplik yönetimini devam ettirmekle yetindi.',style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text('1877- 79 yıllarında başkan olan Kirkor Bezdikyan ile görevi devralıp 1881 yılına kadar sürdüren Sinyor Artin, Ievantenlerin de yardımlarıyla daha çağdaş belediyecilik yaptılar .İki başkan zamanında yollar genişletildi. '
                        'Parke taşlarla kaplama işlerine geçildi. Drenaj kanal ve hendekleri açıldı. Ancak, bütün bunların ötesinde, kent yönetimi kavramı gelişti. Temizlik ve aydınlatmaya ilkeler getirildi. 1908 yılında da ilk kanalizasyon çalışması başlatıldı.',style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text('Bundan sonra kopan ve halkımızca İğtişaş şeklinde isimlendirilen Ermeni Ayaklanması (13-14 Nisan 1909) ve takip eden olaylar içinde belediye hizmetleri akamete uğradı. İşgal sırasında ise ( 1918 -1921 ) kent yönetimi tamamen '
                        'Fransızlar ‘ın elinde idi. Belediye Başkanı ve hatta Vali tamamen göstermelik amaçla tayin edilmiş yandaşları idi.',style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text('8 Ekim’de toplanan Pozantı Kongresi, Adana’nın gerçek Belediye Başkanlığı’na Dıblanzade Mehmet Fuad Bey’i seçti. Meclis üyeliklerine de Ahmet Remzi Bey (Yüreğir), İbrahim Kethüda, Halil Bey (Savatlı), Haydarzade Ali ve İsmail Karadayı seçildi.',style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text('Kurtuluştan sonra Belediye Başkanlığı ‘na getirilen Ali Münif Yeğenağa, aynı zamanda Cumhuriyet Döneminin ilk başkanı idi (1922-1926). Arkasından göreve gelen Turhan Cemal Beriker 1938 yılına kadar aktif başkanlık yaptı. Adana ‘da önemli tesislere, '
                        'planlı çalışmalara ve önemli binaların kuruluşuna imza attı. Sebze hali, park hizmeti veren bahçeler, birçok yeni yol ve buzhane bunlardan bazılarıdır. Aynca 1930 yılında kurulan Adana Elektrik Şirketi’ni de teşvik ederek Adana ‘ya elektriğin getirilmesinde '
                        'yardımcı oldu. Bu şirket 1943 yılında devletleştirilerek Belediyeye devredilmiştir.',style: TextStyle(fontSize: 12),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text('6 Nisan 1956’da açılışı yapılan Seyhan Hidroelektrik Santrali ve Toprak Barajı Adana Belediyeciliğinde olumlu ve olumsuz etkiler veren önemli bir kilometre taşı oldu. Rezervuar alanı içinde kalan köy arazileri yüksek değerle istimlak edildi. '
                        'Hayatı boyunca tahayyül bile edemeyeceği parayı bir anda elinde gören köylü akın-akın kente geliyordu. Bunların yanı sıra, bol ve ucuz enerji üretimine dayalı olarak bir yandan fabrika üstüne fabrikalar açılıyor , diğer yandan da elektrikli motopomplar '
                        'tarım arazilerinde hızla yayılıyordu. Bütün bu nedenler Adana’yı son derece cazip bir iş ve aş merkezi haline getirmişti.',style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text('Büyük göç dalgalarının ardı arkası kesilmiyordu. Adana ‘yı her yönü ile bir Amerika ‘ daki bir eyalete benzetmeyi hedeflemiş olan Başbakan Adnan Menderes’in özel ilgisiyle 1957-60 yılları arasında alışılmadık altyapılar gerçekleştirildi. '
                        'Ana kanalizasyon sisteminde büz ve açık isale kanalları yerine kapalı betonarme sisteme geçilerek şebeke genişletildi. Başkan Ali Sepici’ye büyük itibar sağlayan süreçte yüzlerce bina istimlak edilip ordu araçlarının da yardımı ile yıkılarak Özler Caddesi genişletildi. '
                        'Tamamen iskan altında olan Yeni Cami ile Yüzme Havuzu arası açılarak yeniden inşa edilen Ziyapaşa Bulvarı ‘na bağlandı.',style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text("Adnan Menderes Bulvarı, Yeni Adana, Gecekondu ‘ya Alternatif Belediye Konutları, Belediye Şirketi aracılığı ile başlatılan sosyal konut hamleleri, çöp toplama temizlik, vergi, toplu taşıma ve sair hizmetlerin özelleştirilmesi gibi Türk Belediyecilik "
                        "Tarihine damga vurmuş bir çok önemli atılım, 1984-1989 yılları arasında gerçekleştirildi.",style: TextStyle(fontSize: 12),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10, right: 75),
                    child: Text("Aynı dönem içinde Adana’ya ”Büyükşehir” statüsü verildi.",style: TextStyle(fontSize: 12),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MissionsAndVisions extends StatelessWidget {
  const MissionsAndVisions({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4, left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text('MİSYON',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 14),
                  child: Text("Büyükşehir Belediyesi sorumluluk alanında planlı,hızlı,etkin,şeffaf,adil, ve vatandaş odaklı en iyi hizmeti sunmak",style: TextStyle(fontSize: 12)),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text('VİZYON',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10),
                  child: Text('Lider ve öncü konumunu sürdürerek Türkiye ve Dünya’da örnek belediye olmak',style: TextStyle(fontSize: 12)),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10),
                  child: Text('İLKELERİMİZ',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text('- Hukuktan,yasalardan ve dürüstlükten ödün vermeden herkese adil hizmet sunmak',style: TextStyle(fontSize: 12)),
                ),

                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: Text('- Kamu kaynaklarını yerinde kullanmak',style: TextStyle(fontSize: 12)),
                ),

                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: Text("- Kamu haklarını korumada cesur ve kararlı olmak",style: TextStyle(fontSize: 12)),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("- Karar alma,uygulama ve eylemlerde şeffaf ve açık olmak",style: TextStyle(fontSize: 12)),
                ),

                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: Text("- Hizmette kalite,sürdürülebilirlik ve kalıcılığı hedeflemek",style: TextStyle(fontSize: 12)),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("- Vatandaş-belediye işbirliği ile katılımcılık sağlamak",style: TextStyle(fontSize: 12)),
                ),

                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: Text("- Diğer kurum,kuruluş ve sivil toplum kuruluşları ile koordinasyon içinde çalışmak",style: TextStyle(fontSize: 12)),
                ),

                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: Text("- Faydası kent geneline yayılan projelere öncelik vermek",style: TextStyle(fontSize: 12)),
                ),

                Padding(
                  padding:  EdgeInsets.only(bottom: 10),
                  child: Text("- Vatandaşın sorunlarına en kısa sürede çözüm bulmak",style: TextStyle(fontSize: 12),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


