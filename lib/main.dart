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
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), (){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MyHomePage()
    )
    );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
          image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.deepOrange, BlendMode.colorBurn),
    image: AssetImage('assets/taskopru.jpg'),fit: BoxFit.cover, opacity: 230
    )
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: const [
             Padding(
               padding: EdgeInsets.only(bottom: 50),
               child: Image(image: AssetImage('assets/abb_logo.png'),
               width: 130,
                 height: 130,
               ),
             ),
             Text('Adana Büyükşehir Belediyesi',style: TextStyle(fontSize: 20, color: Colors.white),),
             Padding(
               padding: EdgeInsets.only(top: 12),
               child: Text('Akıllı Kent Uygulaması',style: TextStyle(fontSize: 20, color: Colors.white)),
             ),
             SizedBox(height: 30),
             CircularProgressIndicator(
               color: Colors.teal ,
             ),
           ],
          )
        ),
      ),
    );
  }
}

