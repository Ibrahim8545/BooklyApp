import 'package:booklyapp/constants.dart';
import 'package:booklyapp/features/splash/pressntation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {

     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle( 
            statusBarColor: Colors.white, 
      )); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:kPrimaryColor,
      //textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
      home:const SplashView() ,
  
    );
  }
}
