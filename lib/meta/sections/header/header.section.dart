import 'header.export.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: VxBox(
        child: VStack([
          ZStack([
            PictureWidget(),
            Row(
              children: [
                VStack([
                  if (context.isMobile) 50.heightBox else 10.heightBox,
                  CustomAppBar().shimmer(primaryColor: Colorz.accentColor),
                  30.heightBox,
                  NameWidget(),
                  20.heightBox,
                  VxBox()
                      .color(Colorz.accentColor)
                      .size(80, 10)
                      .make()
                      .shimmer(primaryColor: Colorz.accentColor),
                  30.heightBox,
                  SocialAccounts()
                ]).pSymmetric(h: context.percentWidth * 10, v: 32),
                Expanded(
                  child: VxResponsive(
                    fallback: const Offstage(),
                    small: IntroWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    medium: IntroWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    large: IntroWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    xlarge: IntroWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                  ),
                ),
              ],
            ).w(context.screenWidth)
          ])
        ]),
      )
          .size(context.screenWidth, context.percentHeight * 60)
          .color(Colorz.secondaryColor)
          .make(),
    );
  }
}
