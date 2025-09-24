import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTheme {
  static ThemeData appTheme() {
    return ThemeData(
      primaryColor: AppColors.secondaryColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.secondaryColor,
        primary: AppColors.secondaryColor,
      ),
      fontFamily: GoogleFonts.roboto().fontFamily,
      textTheme: GoogleFonts.robotoTextTheme(),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          centerTitle: true,
          scrolledUnderElevation: 0.0,
          titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: AppColors.secondaryColor, height: 1.4),
          iconTheme: IconThemeData(color: AppColors.secondaryColor)),
      useMaterial3: true,
      checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.selected)) return Colors.black;
            return null;
          }),
          visualDensity: VisualDensity.compact,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          side: const BorderSide(color: Color(0xffC4C4C4), width: 1)),
      datePickerTheme: DatePickerThemeData(
          rangeSelectionBackgroundColor: AppColors.primaryColor,
          dayBackgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.selected)) return Colors.black;
            return null;
          })), tabBarTheme: TabBarThemeData(indicatorColor: Colors.black),
    );
  }
}
