import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playstation_dashboard/config/constants.dart';
import 'package:playstation_dashboard/home_controller.dart';
import 'package:playstation_dashboard/screens/shop_game_screen.dart';
import 'package:playstation_dashboard/widgets/header.dart';
import 'package:playstation_dashboard/widgets/side_menu.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Playstation Dashboard',
      theme: ThemeData(
        scaffoldBackgroundColor: primaryColor,
        primaryColor: primaryColor,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        textTheme: GoogleFonts.ralewayTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // header
            const Header(),
            // body
            Expanded(
              child: Row(
                children: const [
                  // SideMenu
                  SideMenu(),
                  // shop game screen
                  ShopGameScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
