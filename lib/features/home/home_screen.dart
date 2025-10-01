import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_app/core/themes/size_boxes.dart';
import 'package:mini_app/core/themes/styles.dart';
import 'package:mini_app/features/home/widgets/page_background_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageBackgroundWidget(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 24.h),
              child: Column(
                children: [
                  Text("Where Anime Comes Alive", style: Styles.text24Weight700Black),
                  24.heightBox,
                  // horizontal listview.builder for categories
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
