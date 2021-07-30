import 'package:flutter/material.dart';
import 'package:portfolio/meta/sections/header/header.export.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        50.heightBox,
        CustomAppBar(),
        10.heightBox,
        "Thanks for scrolling, ".richText.semiBold.white.withTextSpanChildren(
            ["that's all folks.".textSpan.gray500.make()]).make(),
        10.heightBox,
        SocialAccounts(),
        30.heightBox,
        [
          "Made in flutter with love".text.red500.make(),
          10.widthBox,
          Icon(
            AntIcons.heart,
            color: Vx.red500,
            size: 14,
          )
        ].hStack(crossAlignment: CrossAxisAlignment.center)
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
