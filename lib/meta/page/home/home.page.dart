import 'home.export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colorz.primaryColor,
      child: VStack([
        Header(),
        if (context.isMobile) IntroWidget().p16(),
        ProjectSection(),
        EducationSection(),
        20.heightBox,
        FooterSection(),
      ]).scrollVertical(),
    );
  }
}
