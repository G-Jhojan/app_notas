import 'package:app_notas/src/core/constants/data.dart';
import 'package:app_notas/src/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.HOME_PAGE_ROUTE: (BuildContext context) => const HomePage(),
      },
      title: Constants.MAIN_TITLE,
      initialRoute: HomePage.HOME_PAGE_ROUTE,
      home: Container(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),

    );
  }
}
