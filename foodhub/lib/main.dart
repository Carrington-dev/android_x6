import 'package:flutter/material.dart';
import 'package:foodhub/screens/home/screens/home_screen.dart';
import 'screens/auth/login/log_in_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oftmart',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(

        seconds: 14,
        navigateAfterSeconds: new HomeScreen(),
        title: new Text(
          'Oftmart',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0),
        ),

        image: Image.asset(
          'assets/logos/oftmart.png',
          height: 100,
          width: 100,
          // color: Colors.red,
          colorBlendMode: BlendMode.darken,
          fit: BoxFit.fitWidth,

        ),
        backgroundColor: Colors.white,
        loaderColor: Colors.deepOrange,
      ),
    );

  }
}


class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


