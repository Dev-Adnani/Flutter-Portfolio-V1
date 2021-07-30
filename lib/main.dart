import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app/routes/routes.dart';
import 'package:portfolio/meta/sections/header/header.export.dart';

void main() {
  runApp(Lava());
}

class Lava extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dev Adnani',
      initialRoute: SplashRoute,
      routes: routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colorz.secondaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
