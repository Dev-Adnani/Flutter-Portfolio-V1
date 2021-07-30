import 'dart:async';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:portfolio/app/shared/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/home'),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: 'Ple',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Vx.yellow400,
                    fontWeight: FontWeight.bold,
                    fontSize: 34.0),
                children: <TextSpan>[
                  TextSpan(
                    text: 'ase Wa',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Vx.blue400,
                        fontWeight: FontWeight.bold,
                        fontSize: 34.0),
                  ),
                  TextSpan(
                    text: 'it',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Vx.red500,
                        fontWeight: FontWeight.bold,
                        fontSize: 34.0),
                  ),
                ],
              ),
            ),
            20.heightBox,
            LinearPercentIndicator(
              alignment: MainAxisAlignment.center,
              width: context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 3000,
              percent: 1.0,
              center: Text("100.0%"),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Vx.white,
            ),
          ],
        ),
      ),
    );
  }
}
