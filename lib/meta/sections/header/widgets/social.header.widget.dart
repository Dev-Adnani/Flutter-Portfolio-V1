import '../header.export.dart';

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return [
      Icon(AntIcons.twitter_outline, color: Colors.white).mdClick(() {
        launch(Twitter);
      }).make(),
      20.widthBox,
      Icon(AntIcons.youtube, color: Colors.white).mdClick(() {
        launch(Youtube);
      }).make(),
      20.widthBox,
      Icon(AntIcons.linkedin, color: Colors.white).mdClick(() {
        launch(LinkedIn);
      }).make(),
      20.widthBox,
      Icon(AntIcons.instagram, color: Colors.white).mdClick(() {
        launch(Instagram);
      }).make(),
      20.widthBox,
      Icon(AntIcons.github, color: Colors.white).mdClick(() {
        launch(Github);
      }).make(),
    ].hStack();
  }
}
