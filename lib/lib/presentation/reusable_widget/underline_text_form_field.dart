import 'package:flutter/material.dart';

class UnderLineTextFormField extends StatelessWidget {
  final TextEditingController textEditingController;
  final Color? focusColor;
  final String? hintText;
  final Color? unFocusColor;
  final bool? isPrefix;
  final bool? isVisible;
  final IconData? prefixIcon;

  final Function(String?)? onChange;
  final VoidCallback? onPrefixIconClick;

  const UnderLineTextFormField(
      {Key? key,
      required this.textEditingController,
      this.focusColor,
      this.unFocusColor,
      this.isPrefix,
      this.prefixIcon,
      this.onChange,
      this.onPrefixIconClick,
      this.hintText,
      this.isVisible})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: unFocusColor ?? Theme.of(context).hintColor, width: 1)),
        focusColor: focusColor ?? Theme.of(context).primaryColor,
        suffix: isPrefix ?? false
            ? Icon(
                prefixIcon,
                color: Theme.of(context).hintColor,
              )
            : const SizedBox(
                width: 0,
                height: 0,
              ),
      ),
    );
  }
}
