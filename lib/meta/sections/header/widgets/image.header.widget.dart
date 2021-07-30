import '../header.export.dart';

class PictureWidget extends StatelessWidget {
  const PictureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      origin: Offset(context.percentWidth * 2, 0),
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "assets/images/profile_image.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    ).pOnly(left: 150);
  }
}
