import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';
import '../../utils/fonts_and_margins_constants.dart';


class CustomDropDownButton extends StatelessWidget {
  final String hintText;
  final String? value;
  final bool isSelected;
  final Function(String?)? onChanged;
  final List<String> itemList;

  const CustomDropDownButton(
      {Key? key,
      required this.hintText,
      this.value,
      required this.itemList,
      required this.onChanged,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            isExpanded: true,
            hint: TextView(
              title: hintText,
              fontSize: kMediumFont14.sp,
              color: Theme.of(context).hintColor,
            ),
            value: value,
            items: itemList.map((value) {
              return DropdownMenuItem(
                value: value,
                child: TextView(
                  title: value.toString(),
                  fontSize: kLargeFont16.sp,
                ),
              );
            }).toList(),
            onChanged: onChanged),
      ),
    );
  }
}
