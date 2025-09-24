import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../themes/colors.dart';

class ShimmerItem extends StatelessWidget {
  final double height;
  final double? width;
  final double? radius;
  const ShimmerItem({super.key, required this.height, this.width, this.radius});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: Shimmer.fromColors(
        baseColor: AppColors.grayE3E3E3,
        highlightColor: Colors.white,
        child: Container(
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(radius ?? 60)),
        ),
      ),
    );
  }
}
