import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:coffe/view/homepage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
            primarySwatch: Colors.orange
      ),

      home: AnimatedSplashScreen(
        duration: 4000,
        splash: Image.asset("images/moritz-knoringer-5QR63diGK5o-unsplash.jpg",fit: BoxFit.cover,),
        nextScreen: HomePa(),
        backgroundColor: Colors.black,
        splashIconSize: double.infinity,
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
