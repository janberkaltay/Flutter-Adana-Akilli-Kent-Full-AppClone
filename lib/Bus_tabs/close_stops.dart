import 'package:flutter/material.dart';

class CloseStopsTab extends StatelessWidget {
  const CloseStopsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const[
          Text('BU EKRAN YAKINDA GELECEKTİR',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
          Text('THİS SCREEN COMİNG SOON',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
        ],
      ),
    );
  }
}