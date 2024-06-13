import 'package:explore_uganda/components/bottomNavBar/bottomNavBar.dart';
import 'package:explore_uganda/screens/HomeScreens/Home.dart';
import 'package:explore_uganda/screens/loginScreens/login.dart';
import 'package:explore_uganda/screens/onBoardingScreens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(

       theme: ThemeData(
        //scaffoldBackgroundColor: backgroundColor,
        //   fontFamily: GoogleFonts.Bubblegum Sans().fontFamily,
        textTheme: GoogleFonts.mulishTextTheme(textTheme),
      ),
      
      debugShowCheckedModeBanner: false,
      // home: OnBoarding()
      // home: Login(),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(), // Home screen
        '/bottombar': (context) => BottomNavBar(index: 0), // body care Page
      }
    );
  }
}