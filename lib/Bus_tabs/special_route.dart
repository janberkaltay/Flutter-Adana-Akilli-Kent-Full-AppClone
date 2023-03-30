import 'package:flutter/material.dart';

class SpecialRouteTab extends StatelessWidget {
  const SpecialRouteTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      color: Colors.grey.shade200,
      child: Column(
        children: [
          ListTile(
            title: Row(
              children: [
                Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.teal.shade800,
                        border: Border.all(width: 3,color: Colors.teal.shade900,),
                        shape: BoxShape.circle
                    ),
                    child: const Text('999', style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),)
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('ÖZEL HAT - ÖZEL HAT',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                )
              ],
            ),
            trailing: const Icon(Icons.alarm, size: 30,color: Colors.teal,),
          ),
        ],
      ),
    );
  }
}