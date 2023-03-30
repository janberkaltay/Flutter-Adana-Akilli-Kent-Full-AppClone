import 'package:akillikentclone/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../home_page.dart';

class MayorPage extends StatelessWidget {
  const MayorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.lightBlue.shade900,
          title: const Text('Başkan'),
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
              child: Text('ÖZGEÇMİŞ',style: TextStyle(color: Colors.white, fontSize: 14)),
            ), Tab(
              child: Text('BAŞKANDAN MESAJ',style: TextStyle(color: Colors.white, fontSize: 14)),
            ),
          ]),
        ),
        body: const TabBarView(
            children: [
              Biography(),
              MessageFromPresident()
        ]
        ),
      ),
    );
  }
}

class Biography extends StatelessWidget {
  const Biography({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12),
      child: LayoutBuilder(
        builder: (context,constraints) => Column(
          children: [
            Container(
              color: Colors.lightBlue.shade900,
              height: constraints.maxHeight * 0.25,
              width: constraints.maxWidth,
              child: Row(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('Zeydan KARALAR',style: TextStyle(color: Colors.white),),
                        const Padding(
                          padding: EdgeInsets.only(top: 12,bottom: 12),
                          child: Text('18. Adana Büyükşehir Belediye Başkanı',style: TextStyle(color: Colors.white, fontSize: 11),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 12),
                                child: Icon(FontAwesomeIcons.facebook,color: Colors.white,size: 30),
                              ),
                              Icon(FontAwesomeIcons.twitter, color: Colors.white,size: 30),
                            ],
                          ),
                        )
                      ],
                    ),
                  const Padding(
                     padding: EdgeInsets.only(left: 41.5),
                     child: Image(image: AssetImage('assets/zeydan karalar.png')),
                   )
                ],
              ),
            ),
            Container(
              height: constraints.maxHeight * 0.75,
              padding: const EdgeInsets.only(top: 6, left: 8, right: 8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 6, right: 30),
                      child: Text('1958’de Adana’da doğdu. İlkokul, ortaokul, liseyi Adana’da okudu.',style: TextStyle(fontSize: 12)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Text('1977 yılında Demokratik Sol Yüksek Öğrenim Derneğini kurdu ve yönetim kurulu başkanlığını yaptı.',style: TextStyle(fontSize: 11)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Text('1977-1980 yılları arasında CHP İl Gençlik Kolları Saymanlığı ve Merkez İlçe Gençlik Kolları Başkanlığı yaptı.',style: TextStyle(fontSize: 11)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 6, right: 15),
                      child: Text('1980 yılında Çukurova Üniversitesi Makine Mühendisliği’nden mezun oldu.',style: TextStyle(fontSize: 11)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text('1981’de, 23 yaşında Makina Mühendisleri Odası Başkanlığı na seçilerek Türkiye’nin en genç oda başkanı unvanını elde etti; 2 yıl bölge başkanlığı ve üst kurul (TMMOB) delegeliği yaptı.',style: TextStyle(fontSize: 11),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 6, right: 36),
                      child: Text('1979-1985 yılları arasında Çukobirlik’te İplik İşletme Şefi olarak çalıştı.',style: TextStyle(fontSize: 11)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Text('1985-1991 yılları arasında Alman AEG ETİ Endüstri A.Ş’de Müşteri Hizmetleri Yöneticiliği yaptı.',style: TextStyle(fontSize: 11)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text('1991-1996 yılları arasında Çukobirlik İplik Dokuma Fabrika Müdürü ve Teknik Genel Müdür Yardımcılığı görevlerinde bulundu.',style: TextStyle(fontSize: 11)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text('1996-2007  yılları arasında Okan Tekstil A.Ş’de Genel Müdürlük yaptı. Kazakistan’da Okan-Antriko Entegre Tekstil Fabrikasını da kurdu ve Genel Müdürlüğü’nü yaptı.',style: TextStyle(fontSize: 11)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text('2005 yılında kendi şirketi A-TEKS Mühendislik’i kurdu. 2008 yılında ise ikinci şirketi Başkent Pres’i kurdu.Şirketteki yönetimini sürdürürken siyasete de ara vermedi.',style: TextStyle(fontSize: 11),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text('7 Temmuz 2010’da CHP Adana İl Başkanlğı’na atandı. Referandum çalışmalarını yürüttü. 23 Ocak 2011’de İl Kongresini de kazanarak bu göreve Genel Seçimler sürecinde de devam etti.',style: TextStyle(fontSize: 11)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text('Zeydan Karalar halen ADSİAD üyeliğini, MMO üyeliğini ve A-TEKS Mühendislik Yönetim Kurulu Başkanlığı’nı sürdürmektedir.',style: TextStyle(fontSize: 11)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Text("Eşi Nuray Karalar Fen ve Teknoloji Öğretmeni, kızı tıp doktoru, iki oğlu mühendistir.  Arapça ve Almanca bilmektedir.",style: TextStyle(fontSize: 11),),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MessageFromPresident extends StatelessWidget {
  const MessageFromPresident({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            Container(
              color: Colors.lightBlue.shade900,
              height: constraints.maxHeight * 0.25,
              width: constraints.maxWidth,
                child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                       const Text('Zeydan KARALAR',style: TextStyle(color: Colors.white),),
                      const Padding(
                        padding: EdgeInsets.only(top: 8,bottom: 12),
                        child: Text('18. Adana Büyükşehir Belediye Başkanı',style: TextStyle(color: Colors.white, fontSize: 11),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 12),
                              child: Icon(FontAwesomeIcons.facebook,color: Colors.white,size: 30),
                            ),
                            Icon(FontAwesomeIcons.twitter, color: Colors.white,size: 30),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 41.5),
                    child: Image(image: AssetImage('assets/zeydan karalar.png')),
                  )
                ],
              ),
            ),
            Container(
              height: constraints.maxHeight * 0.75,
              padding: const EdgeInsets.only(top: 6, left: 8, right: 8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 4, right: 30),
                      child: Text('Değerli hemşerilerimiz',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text("Memleketimiz için büyük bir öneme sahip olan 2019 yerel seçim sürecini Adana'da başarılı bir şekilde geçirdik. Bu sürece başlarken tıpkı hayatım boyunca olduğu gibi; dürüstlük, çalışkanlık, vefalılık, halkçılık ve eşitlikçilik ana ilkelerimdi. Sizler de bunların gerçekliğini ve samimiyetini gördünüz, hissettiniz ve bizi desteklediniz. Çocuklardan yaşlılara, herkesin sahiplenebileceği halkın belediyesi olma hedefiyle 25 yıllık hasrete hep birlikte son verdik. Bu süreç içerisinde, bu başarıya katkı sunan siz değerli kardeşlerime gönülden teşekkürlerimi sunuyorum. Önemli olan bu teşekkürü sözlerin ötesinde, hizmetlerle sunmak aslında, bunu da yapacağımdan hiç şüpheniz olmasın.",style: TextStyle(fontSize: 12)),
                    ),
                    Text("Adana'da yeni bir dönemi başlatıyoruz. Aldığımız sorumluluğun ciddiyetinde ve bilincindeyiz. Adana'yı gelişimine katkı sağlamak için bugüne kadar sürdürmüş olduğumuz inanç ve özveriyle durmadan çalışacağız.Halkın ihtiyaçlarını öncelik alıp bunları gidermeye çalışan, belediye ile halk arasındaki iletişim yollarını sürekli açık tutan ve halkın seçtiği kişileri denetleyebildiği bir yönetim anlayışını benimseyeceğiz. Adana'da birikmiş ve ağır sorunlara sahip olduğunu biliyoruz. Biz, bu sorunları tek tek tespit eden ve çözümleri en kısa sürede hayata geçirecek bir hizmet anlayışını hakim kılacağız. Önümüze çıkan engellerden şikayet etmek yerine çözüme odaklanacağız. Hizmetleriyle, şeffaf yönetimiyle, güler yüzlü kadrosuyla Türkiye'de örnek gösterilecek bir belediye yaratacağız.Sevgili hemşerilerim, Adana'yı çok yukarılara taşımak için el birliğiyle çalışacağız. Adana’da sevgi, saygı ve kardeşlik kazandı demiştik. Bu sevgi, saygı ve kardeşlik duygularıyla siyasi parti ayrımı yapmaksızın herkese hizmet için çalışacağım. Umudumuz, kararlılığımız, inancımız, dürüstlüğümüz bize bu yolda rehber olmaya devam edecek.",style: TextStyle(fontSize: 12)),
                    Padding(padding: EdgeInsets.only(bottom: 4),
                      child: Text('Hepinizi içtenlikle selamlıyorum.',style: TextStyle(fontSize: 11)),
                    ),
                    Text('Zeydan KARALAR',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
                    Text('Adana Büyükşehir Belediye Başkanı',style: TextStyle(fontSize: 11),),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


