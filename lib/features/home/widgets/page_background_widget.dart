import 'package:flutter/material.dart';
import 'package:mini_app/core/themes/colors.dart';
import 'package:mini_app/gen/assets.gen.dart';

class PageBackgroundWidget extends StatelessWidget {
  const PageBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.primaryColorLight, AppColors.secondaryColor],
        ),
      ),
      child: Stack(
        children: [
          Positioned(left: -140, top: -100, child: Image.asset(Assets.images.star1.path)),
          Positioned(right: -150, top: 300, child: Image.asset(Assets.images.star2.path)),
        ],
      ),
    );
  }
}
