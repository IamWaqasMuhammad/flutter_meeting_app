import 'package:flutter_meeting_app/app_barrels.dart';

class CustomTextField extends StatelessWidget {
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final TextStyle? fieldTextStyle;
  final TextEditingController? controller;
  final Color? cursorColor;
  final double? cursorHeight;
  final double cursorWidth;
  final Radius? cursorRadius;
  final TextInputType? textInputType;
  final bool obscureText;
  final String? hintText;
  final String? labelText;
  final TextStyle? hintTextStyle;
  final TextStyle? labelTextStyle;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;
  final double enableBorderRadius;
  final Color enableBorderColor;
  final double enableBorderWidth;
  final double focusBorderRadius;
  final Color focusBorderColor;
  final double focusBorderWidth;
  final bool enabled;
  final Color? focusColor;
  final double errorBorderRadius;
  final double errorBorderWidth;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? fillColor;
  final bool? filled;
  final TextStyle? errorTextStyle;
  final String? Function(String?)? onValid;
  final void Function(String)? onFieldSubmitted;
  final bool enableSuggestions;

  const CustomTextField({
    super.key,
    this.textInputAction,
    this.focusNode,
    this.fieldTextStyle,
    this.controller,
    this.cursorColor,
    this.cursorHeight,
    this.cursorWidth = 2.0,
    this.cursorRadius,
    this.textInputType,
    this.obscureText = false,
    this.hintText,
    this.labelText,
    this.hintTextStyle,
    this.labelTextStyle,
    this.borderRadius = 8,
    this.borderColor = const Color(0xFF000000),
    this.borderWidth = 1,
    this.enableBorderRadius = 8,
    this.enableBorderColor = const Color(0xFF000000),
    this.enableBorderWidth = 1,
    this.focusBorderRadius = 8,
    this.focusBorderColor = const Color(0xFF000000),
    this.focusBorderWidth = 1,
    this.enabled = true,
    this.errorTextStyle,
    this.focusColor,
    this.fillColor,
    this.filled,
    this.onValid,
    this.onFieldSubmitted,
    this.enableSuggestions = true,
    this.errorBorderRadius = 8,
    this.errorBorderWidth = 1,
    this.suffixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      focusNode: focusNode,
      style: fieldTextStyle,
      controller: controller,
      cursorColor: cursorColor,
      cursorHeight: cursorHeight,
      cursorRadius: cursorRadius,
      cursorWidth: cursorWidth,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: textInputType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintTextStyle,
        labelText: labelText,
        labelStyle: labelTextStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: BorderSide(color: borderColor, width: borderWidth),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(enableBorderRadius)),
          borderSide: BorderSide(
            color: enableBorderColor,
            width: enableBorderWidth,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(focusBorderRadius)),
          borderSide: BorderSide(
            color: focusBorderColor,
            width: focusBorderWidth,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.error, width: 1),
        ),
        enabled: enabled,
        focusColor: focusColor,
        fillColor: fillColor,
        filled: filled,
        errorStyle: errorTextStyle,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      onFieldSubmitted: onFieldSubmitted,
      validator: onValid,
      enableSuggestions: enableSuggestions,
    );
  }
}
