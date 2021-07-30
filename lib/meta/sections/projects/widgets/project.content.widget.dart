import '../projects.export.dart';

class ProjectContent extends StatelessWidget {
  final String projectName;
  final String projectDesc;
  final String projectDuration;
  final String projectTechStack;
  final VoidCallback onTap;

  const ProjectContent(
      {Key? key,
      required this.projectName,
      required this.projectDesc,
      required this.projectDuration,
      required this.projectTechStack,
      required this.onTap})
      : super(key: key);

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.isMobile
            ? context.percentWidth * 80
            : context.percentWidth * 50,
        height: context.isMobile
            ? context.percentHeight * 200
            : context.percentHeight * 100,
        decoration: BoxDecoration(
          color: Colorz.secondaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            projectName.text.bold.white.xl.center.make().p(20),
            5.heightBox,
            projectDesc.text.white.lg
                .maxLines(3)
                .make()
                .pOnly(left: 20, right: 20),
            10.heightBox,
            'Duration :  $projectDuration'
                .text
                .white
                .lg
                .maxLines(1)
                .make()
                .pOnly(left: 20, right: 20),
            10.heightBox,
            'Tech Stack : $projectTechStack'
                .text
                .white
                .lg
                .maxLines(1)
                .make()
                .pOnly(left: 20, right: 20),
            "Click On Card To Get More Info"
                .text
                .bold
                .yellow400
                .sm
                .make()
                .p(20),
          ],
        ),
      ),
    );
  }
}
