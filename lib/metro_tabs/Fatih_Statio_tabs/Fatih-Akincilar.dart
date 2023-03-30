import 'package:flutter/material.dart';

class FatihToAkincilar extends StatelessWidget {
  const FatihToAkincilar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const weekDaysHours = ['06:00',
      '06:15', '06:30', '06:45', '07:00', '07:10', '07:20', '07:30', '07:40', '07:50', '08:00', '08:10', '08:20', '08:30', '08:40',
      '08:50', '09:00', '09:15', '09:30', '09:45', '10:00', '10:15', '10:30', '10:45', '11:00', '11:15', '11:30', '11:45', '12:00',
      '12:15', '12:30', '12:45', '13:00', '13:15', '13:30', '13:45', '14:00', '14:15', '14:30', '14:45', '15:00', '15:15', '15:30',
      '15:45', '16:00', '16:15', '16:30', '16:45', '17:00', '17:10', '17:20', '17:30', '17:40', '17:50', '18:00', '18:10', '18:20',
      '18:30', '18:40', '18:50', '19:00', '19:15', '19:30', '19:45', '20:00', '20:15', '20:30', '20:45', '21:00', '21:30', '22:00',
      '22:30', '23:00'];
    return SingleChildScrollView(
      child: Column(
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: weekDaysHours.map((hours){
                  return Column(
                    children: [
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(hours),
                            Text(hours),
                            Text(hours)
                          ],
                        ),
                      ),
                      const Divider(
                        height: 0,
                        thickness: 1,
                        indent: 1,
                        endIndent: 0,
                        color: Colors.grey,
                      ),
                    ],
                  );
                }).toList(),
              ),

            ],
          ),

        ],
      ),
    );
  }
}
