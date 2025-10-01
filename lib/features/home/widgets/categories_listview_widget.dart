import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class CategoriesListViewWidget extends StatefulWidget {
  const CategoriesListViewWidget({super.key});

  @override
  State<CategoriesListViewWidget> createState() => _CategoriesListViewWidgetState();
}

class _CategoriesListViewWidgetState extends State<CategoriesListViewWidget> {
  final List<String> categories = [
    'All',
    'Popular',
    'New Releases',
    'Trending',
    'Top Rated',
    'Upcoming',
    'Ongoing',
    'Completed',
    'Cancelled',
    'Hiatus',
    'Dropped',
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              margin: EdgeInsets.only(right: index == categories.length - 1 ? 0 : 8.w),
              decoration: BoxDecoration(
                color: selectedIndex == index ? AppColors.primaryColor : Colors.white,
                borderRadius: BorderRadius.circular(100.r),
              ),
              child: Text(
                categories[index],
                style: Styles.text14Weight700Primary.copyWith(color: selectedIndex == index ? Colors.white : AppColors.primaryColor),
              ),
            ),
          );
        },
      ),
    );
  }
}
