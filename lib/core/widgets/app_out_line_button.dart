import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../themes/colors.dart';

class AppOutLineButton extends StatelessWidget {
  final String iconSVG;
  final String text;
  final VoidCallback onPressed;
  const AppOutLineButton(
      {super.key,
      required this.iconSVG,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            side: const BorderSide(color: AppColors.primaryColor, width: 1.3),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            )),
        child: Row(
          children: [
            SvgPicture.asset(iconSVG),
            Expanded(child: Center(child: Text(text)))
          ],
        ));
  }
}
