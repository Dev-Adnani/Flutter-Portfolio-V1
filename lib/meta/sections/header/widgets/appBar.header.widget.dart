import '../header.export.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.code_sharp,
      size: 50,
      color: Colorz.accentColor,
    );
  }
}
