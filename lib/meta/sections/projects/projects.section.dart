import 'projects.export.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colorz.primaryColor,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          'Projects \n'
              .richText
              .withTextSpanChildren(
                  ["Selected One's".textSpan.yellow400.make()])
              .xl4
              .white
              .make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: [
                ProjectContent(
                  projectName: projectOneName,
                  projectDesc: projectOneDesc,
                  projectDuration: projectOneDuration,
                  projectTechStack: projectOneTS,
                  onTap: () {
                    launch(projectOneLink);
                  },
                ),
                ProjectContent(
                  projectName: projectTwoName,
                  projectDesc: projectTwoDesc,
                  projectDuration: projectTwoDuration,
                  projectTechStack: projectTwoTS,
                  onTap: () {
                    launch(projectTwoLink);
                  },
                ),
                ProjectContent(
                  projectName: projectThreeName,
                  projectDesc: projectThreeDesc,
                  projectDuration: projectThreeDuration,
                  projectTechStack: projectThreeTS,
                  onTap: () {
                    launch(projectThreeLink);
                  },
                ),
                ProjectContent(
                  projectName: projectFourName,
                  projectDesc: projectFourDesc,
                  projectDuration: projectFourDuration,
                  projectTechStack: projectFourTS,
                  onTap: () {
                    launch(projectFourLink);
                  },
                )
              ],
              height: context.isMobile ? 400 : 260,
              enlargeCenterPage: false,
              viewportFraction: context.isMobile ? 1.75 : 1.5,
              autoPlay: true,
              autoPlayAnimationDuration: 5.seconds,
            ),
          )
        ],
      ).p64().h(context.isMobile ? 550 : 450),
    );
  }
}
