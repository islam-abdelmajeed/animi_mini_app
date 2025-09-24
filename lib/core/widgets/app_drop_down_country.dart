import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../themes/colors.dart';

class AppDropDownCountry extends StatefulWidget {
  final String? selectedValue;
  final List<Map<String, String>> items;
  final Function(String?)? onChanged;
  final Function(String?)? validator;

  const AppDropDownCountry({
    super.key,
    required this.selectedValue,
    required this.items,
    required this.onChanged,
    this.validator,
  });

  @override
  State<AppDropDownCountry> createState() => _AppDropDownState();
}

class _AppDropDownState extends State<AppDropDownCountry> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: DropdownButtonFormField<String>(
        initialValue: widget.selectedValue,
        isDense: true,
        // hint: Text(
        //   'Select Country',
        //   style: Styles.text12Weight400Gray,
        //   overflow: TextOverflow.ellipsis,
        // ),
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
              EdgeInsets.symmetric(vertical: 14.5.h, horizontal: 8.w),
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: AppColors.primaryColor, width: 1.3),
            borderRadius: BorderRadius.circular(8.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: AppColors.primaryColor, width: 1.3),
            borderRadius: BorderRadius.circular(8.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 1.3),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 1.3),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        items: widget.items
            .map(
              (country) => DropdownMenuItem<String>(
                value: country['dial_code'],
                child: Text(
                  // style: Styles.text12Weight400Black,
                  overflow: TextOverflow.ellipsis,
                  "${country['dial_code']} (${country['code']})",
                ),
              ),
            )
            .toList(),
        onChanged: (value) => widget.onChanged!(value),
      ),
    );
  }
}
