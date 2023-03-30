import 'package:akillikentclone/home_page.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(const akilliKent());
}

class akilliKent extends StatelessWidget {
  const akilliKent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
