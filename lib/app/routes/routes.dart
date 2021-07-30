import 'package:portfolio/meta/page/home/home.page.dart';
import 'package:portfolio/meta/page/splash/splash.page.dart';

const String SplashRoute = "/splash";
const String HomeRoute = "/home";

final routes = {
  SplashRoute: (context) => SplashPage(),
  HomeRoute: (context) => HomeScreen()
};
