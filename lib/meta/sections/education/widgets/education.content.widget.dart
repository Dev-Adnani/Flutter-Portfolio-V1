import '../education.export.dart';

class EducationWidget extends StatelessWidget {
  final String name;
  final String course;
  final String year;
  final String score;

  const EducationWidget(
      {Key? key,
      required this.name,
      required this.course,
      required this.year,
      required this.score})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.isMobile
          ? context.percentWidth * 60
          : context.percentWidth * 25,
      height: context.isMobile
          ? context.percentHeight * 80
          : context.percentHeight * 100,
      decoration: BoxDecoration(
        color: Colorz.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (context.isLandscape) name.text.bold.white.xl.center.make().p(20),
          if (context.isMobile)
            name.text.bold.white.maxLines(2).xl.center.make().p(20),
          5.heightBox,
          course.text.white.lg.make().pOnly(left: 20, right: 20),
          10.heightBox,
          year.text.white.lg.maxLines(1).make().pOnly(left: 20, right: 20),
          10.heightBox,
          score.text.white.lg.maxLines(1).make().pOnly(left: 20, right: 20),
        ],
      ),
    );
  }
}
