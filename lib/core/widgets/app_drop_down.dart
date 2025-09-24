import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/colors.dart';

class AppDropDown extends StatefulWidget {
  final String? selectedValue;
  final List<String> items;
  final Function(String?)? onChanged;
  final Function(String?)? validator;
  const AppDropDown(
      {super.key,
      required this.selectedValue,
      required this.items,
      required this.onChanged,
      this.validator});

  @override
  State<AppDropDown> createState() => _AppDropDownState();
}

class _AppDropDownState extends State<AppDropDown> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      child: DropdownButtonFormField<String>(
        initialValue: widget.selectedValue,
        isDense: true,
        hint: const Text('Select', overflow: TextOverflow.ellipsis),
        // style: Styles.text10Weight400Black,
        // icon: SvgPicture.asset(AppImages.downArrow, height: 10.h, width: 10.w),
        validator: (value) {
          if (widget.validator != null) {
            widget.validator!(value);
          }
          return null;
        },
        decoration: InputDecoration(
            constraints: BoxConstraints(minHeight: 58.h),
            contentPadding:
                EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: AppColors.primaryColor, width: 1.3),
                borderRadius: BorderRadius.circular(8.0)),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: AppColors.primaryColor, width: 1.3),
                borderRadius: BorderRadius.circular(8.0)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 1.3),
                borderRadius: BorderRadius.circular(8.0)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 1.3),
                borderRadius: BorderRadius.circular(8.0))),
        items: widget.items
            .map((code) =>
                DropdownMenuItem<String>(value: code, child: Text(code)))
            .toList(),
        onChanged: (value) => widget.onChanged!(value),
      ),
    );
  }
}
