import '../header.export.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return "Dev \nAdnani."
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
  }
}
