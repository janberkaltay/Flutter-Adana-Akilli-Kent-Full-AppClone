import 'package:flutter/material.dart';
class AkincilarToHastane extends StatelessWidget {
  const AkincilarToHastane({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
    Container(
    padding: const EdgeInsets.only(left: 20, right: 30),
    height: 20,
    width: 392.7,
    color: Colors.cyan.shade200,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: const [
    Text('Hafta içi'),
    Text('Cumartesi'),
    Text('Pazar')
    ],
    ),
    ),
    ]
    );
  }
}
