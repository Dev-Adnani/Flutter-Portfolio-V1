import 'package:portfolio/meta/sections/education/constants/edu.details.const.dart';

import 'education.export.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colorz.secondaryColor,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          'Educ'
              .richText
              .withTextSpanChildren(["ation".textSpan.yellow400.make()])
              .xl4
              .white
              .make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: [
                EducationWidget(
                    name: schoolOneName,
                    course: schoolOneCourse,
                    year: schoolOneCompleted,
                    score: schoolOnePer),
                15.widthBox,
                EducationWidget(
                    name: collegeName,
                    course: schoolTwoMisc,
                    year: collegeDuration,
                    score: collegeSemRes),
                15.widthBox,
                EducationWidget(
                    name: schoolTwoName,
                    course: schoolTwoCourse,
                    year: schoolTwoCompleted,
                    score: schoolTwoPer),
              ],
              initialPage: 2,
              height: 220,
              enlargeCenterPage: false,
              viewportFraction: context.isMobile ? 1.25 : 0.2,
              autoPlay: false,
              autoPlayAnimationDuration: 10.seconds,
              enableInfiniteScroll: false,
            ),
          )
        ],
      ).p64().h(context.isMobile ? 500 : 350),
    );
  }
}
