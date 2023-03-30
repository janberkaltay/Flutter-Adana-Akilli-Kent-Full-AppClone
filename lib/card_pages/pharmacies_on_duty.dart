import 'package:akillikentclone/NavBar.dart';
import 'package:akillikentclone/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PharmaciesOnDuty extends StatelessWidget {
  const PharmaciesOnDuty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Nöbetçi Eczaneler'),
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(5.0))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('ALDADAĞ ECZANESİ',style: TextStyle(color: Colors.white, fontSize: 16),),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                              width: 40,
                              height: 40,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle
                              ),
                              child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                              ),
                            ),
                            Container(
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('SİNAN PAŞA MAH. İNÖNÜ CAD. NO: 40/D ALADAĞ-ADANA',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 591 26 41',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' ALADAĞ SAĞLIKOCAĞI CİVARI',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ALADAĞ',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('ŞENSAN ECZANESİ',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('CUMHURİYET MAH.109 SOKÇ NO:10-E İŞYERİ NO:Z/A CEYHAN/ADANA',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 613 62 60',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 3 NOLU SAĞLIKOCAĞININ 100M İLERİSİ',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' CEYHAN',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('LOREM İPSUM DOLOR',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 000 00 00',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' Lorem ipsum dolor sit amet,',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ÇUKUROVA',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('LOREM İPSUM DOLOR',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 000 00 00',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' Lorem ipsum dolor sit amet,',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ÇUKUROVA',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('LOREM İPSUM DOLOR',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 000 00 00',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' Lorem ipsum dolor sit amet,',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ÇUKUROVA',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('LOREM İPSUM DOLOR',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 000 00 00',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' Lorem ipsum dolor sit amet,',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ÇUKUROVA',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('LOREM İPSUM DOLOR',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 000 00 00',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' Lorem ipsum dolor sit amet,',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ÇUKUROVA',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('LOREM İPSUM DOLOR',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 000 00 00',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' Lorem ipsum dolor sit amet,',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ÇUKUROVA',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('LOREM İPSUM DOLOR',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 000 00 00',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' Lorem ipsum dolor sit amet,',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ÇUKUROVA',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('LOREM İPSUM DOLOR',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 000 00 00',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' Lorem ipsum dolor sit amet,',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ÇUKUROVA',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('LOREM İPSUM DOLOR',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 000 00 00',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' Lorem ipsum dolor sit amet,',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ÇUKUROVA',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('LOREM İPSUM DOLOR',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 000 00 00',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' Lorem ipsum dolor sit amet,',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ÇUKUROVA',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('LOREM İPSUM DOLOR',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 000 00 00',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' Lorem ipsum dolor sit amet,',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ÇUKUROVA',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('LOREM İPSUM DOLOR',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 000 00 00',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' Lorem ipsum dolor sit amet,',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ÇUKUROVA',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('LOREM İPSUM DOLOR',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 000 00 00',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' Lorem ipsum dolor sit amet,',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ÇUKUROVA',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('LOREM İPSUM DOLOR',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 000 00 00',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' Lorem ipsum dolor sit amet,',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ÇUKUROVA',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('LOREM İPSUM DOLOR',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 000 00 00',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' Lorem ipsum dolor sit amet,',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ÇUKUROVA',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('LOREM İPSUM DOLOR',style: TextStyle(color: Colors.white, fontSize: 16),),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.locationArrow)
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.phone))
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.75),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ',style: TextStyle(fontSize: 18,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const[
                              Text('Telefon:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' 0322 000 00 00',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: const [
                              Text('Tarif:',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(' Lorem ipsum dolor sit amet,',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),Row(
                          children: const [
                            Text('Bölge:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' ÇUKUROVA',style: TextStyle(fontSize: 16),)
                          ],
                        ),Row(
                          children: const [
                            Text('Başlangıç Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-26 08:00')
                          ],
                        ),Row(
                          children: const [
                            Text('Bitiş Zamanı:',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(' 2023-03-27 08:00')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
