import '../header.export.dart';

class CvWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        launch(CV);
      },
      child: "Check CV".text.color(Colorz.secondaryColor).make(),
      style: ElevatedButton.styleFrom(
        primary: Colorz.accentColor,
      ),
    );
  }
}
