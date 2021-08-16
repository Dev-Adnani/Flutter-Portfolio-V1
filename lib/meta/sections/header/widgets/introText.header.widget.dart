import '../header.export.dart';

class IntroTextWidget extends StatelessWidget {
  const IntroTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return "Dev Adnani Is A Software Engineer with excellent problem-solving skills \nPassionate about Reading Books , Exploring Places , Playing Chess & Coding"
        .text
        .white
        .xl
        .maxLines(5)
        .make()
        .w(context.isMobile ? context.screenWidth : context.percentWidth * 40);
  }
}
