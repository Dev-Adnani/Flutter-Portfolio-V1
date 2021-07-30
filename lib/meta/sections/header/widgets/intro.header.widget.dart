import 'package:portfolio/meta/sections/Header/widgets/introText.header.widget.dart';
import '../header.export.dart';
import 'cv.header.widget.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          "- Introduction".text.gray500.widest.medium.make(),
          10.heightBox,
          IntroTextWidget(),
          20.heightBox,
          CvWidget(),
        ].vStack(),
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}
