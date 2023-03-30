import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

class FindBusTab extends StatelessWidget {
  const FindBusTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.grey.shade200,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Icon(Icons.warning, color: Colors.red, size: 40,),
          ),
          Column(
            children: const [
              Text('Duraklar konumunuz kullanılarak',style: TextStyle(fontSize: 18, color: Colors.red),),
              Text('yakından uzağa doğru listelenmektedir.',style: TextStyle(fontSize: 18, color: Colors.red),),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 70, bottom: 8),
            child: Text('Seçtiğiniz Durağın Adı'),
          ),
          const Text('---', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Accordion(
            contentBorderRadius: 100,
            children: [
            AccordionSection(
              headerBackgroundColor: Colors.white,
              contentBorderWidth: 0,
                header: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(Icons.arrow_drop_down_outlined),
                ),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Konum alınarak en yakın duraklar bulunur'),
                    Text('ve burada listelenir'),
                  ],
                ),
              isOpen: false,
            ),
          ],
          ),
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.teal.shade800,
                shape: BoxShape.circle
            ),
            child: GestureDetector(
              child: const Text('BUL',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
              onTap: (){},
          ),
          )
        ],
      ),
    );
  }
}