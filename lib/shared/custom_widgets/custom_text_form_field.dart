import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.type = TextInputType.text,
    this.onSubmit,
    this.onChanged,
    this.onTap,
    required this.labelText,
    this.isValidate = true,
    this.isPhone = false,
    this.enabled = true,
    this.isFocus = false,
    this.obscureText = false,
    this.textColor = AppColor.black,
    this.textDirection = ui.TextDirection.rtl,
    this.prefix,
    this.suffix,
    this.suffixPressed,
    this.minLines = 1,
    this.maxLines = 1,
  });

  final TextEditingController controller;
  final TextInputType type;
  final Function(String)? onSubmit;
  final Function(String)? onChanged;
  final Function()? onTap;
  final Function()? suffixPressed;
  final IconData? prefix;
  final IconData? suffix;
  final String labelText;

  final int minLines;
  final int maxLines;

  final bool isValidate;
  final bool isPhone;
  final bool obscureText;
  final Color textColor;
  final ui.TextDirection textDirection;
  final bool enabled;
  final bool isFocus;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: AppColor.primary,
            ),
      ),
      child: TextFormField(
        autofocus: isFocus,
        enabled: enabled,
        textDirection: textDirection,
        validator: (value) {
          if (isValidate) {
            if (value!.isEmpty) {
              return '* $labelText مطلوب ';
            }
            if (isPhone) {
              bool isPhoneFunc(String input) => RegExp(
                    r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$',
                  ).hasMatch(input);
              if (!isPhoneFunc(value)) {
                return 'الرقم خطأ';
              }
            }
          }
          return null;
        },
        minLines: minLines,
        maxLines: maxLines,
        onFieldSubmitted: (x) {},
        onChanged: onChanged,
        controller: controller,
        keyboardType: type,
        obscureText: obscureText,
        onTap: onTap,
        style: TextStyle(color: textColor),
        decoration: InputDecoration(
          labelText: labelText,
          contentPadding: AppPadding.paddingTextFormField,
          focusedBorder: OutlineInputBorder(
            borderRadius: AppRadius.radius20,
            borderSide: const BorderSide(color: AppColor.primary),
          ),
          border: OutlineInputBorder(
            borderRadius: AppRadius.radius20,
          ),
          prefixIcon: prefix != null ? Icon(prefix) : null,
          suffixIcon: suffix != null
              ? IconButton(
                  icon: Icon(suffix),
                  onPressed: suffixPressed,
                )
              : null,
        ),
      ),
    );
  }
}
