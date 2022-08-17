import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';

/// A Text Form Field with a thin box decoration.
Widget customTextFormFieldWithValidator(
  BuildContext context, {
  TextEditingController? controller,
  AutovalidateMode? autovalidateMode,
  EdgeInsetsGeometry? padding,
  FormFieldValidator<String>? validator,
  bool? fixedHeight = false,
  String? hintText,
  String? titleText,
  bool isObscureText = false,
  double? fontSize,
  double? hintFontSize,
  double? fieldHeight,
  double? fieldWidth,
  Color? textFieldColor,
  Color? fillColor,
  Color? textColor,
  Color? borderColor,
  Color? hintTextColor,
  Color? titleTextColor,
  Widget? prefixWidget,
  Widget? endPrefixWidget,
  Widget? titlePrefixWidget,
  Function(String?)? onChanged,
  int? maxLines,
  FocusNode? focusNode,
  VoidCallback? onTap,
  VoidCallback? onEditingComplete,
  VoidCallback? onPressVCL,
  EdgeInsetsGeometry? margin,
  EdgeInsetsGeometry? contentPadding,
  TextInputType? keyboardType,
  TextInputAction? textInputAction,
  bool readOnly = false,
  BorderRadiusGeometry? borderRadius,
  GlobalKey<FormFieldState>? formKey,
}) {
  final showTextProvider = StateProvider((ref) => isObscureText);
  return Consumer(
    builder: (context, ref, child) {
      final showtext = ref.watch(showTextProvider);
      return Container(
        padding: padding ?? EdgeInsets.zero,
        height: fixedHeight! ? fieldHeight ?? AppSize.height * 0.02 : null,
        width: fieldWidth ?? AppSize.height * 0.9,
        decoration: BoxDecoration(
          color: fillColor ?? AppColor.transparent,
          border: Border.all(color: borderColor ?? AppColor.secondary),
          borderRadius: borderRadius ?? AppRadius.radius20,
          // Border(
          //     bottom: BorderSide(
          //         color: AppRepoColors().appGreyColor,
          //         width: SizeConfig.safeBlockHorizontal * 0.5)
          // ),
        ),
        child: Padding(
          padding: AppPadding.paddingV10,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            verticalDirection: VerticalDirection.up,
            children: [
              prefixWidget ?? Container(),
              if (prefixWidget != null) SizedBox(width: AppSize.height / 60),
              Expanded(
                child: TextFormField(
                  key: formKey,
                  readOnly: readOnly,
                  textInputAction: textInputAction ?? TextInputAction.done,
                  focusNode: focusNode,
                  obscureText: showtext,
                  controller: controller,
                  maxLines: maxLines ?? 1,
                  style: TextStyle(color: textColor, fontSize: fontSize),
                  keyboardType: keyboardType,
                  onTap: onTap ?? () {},
                  onEditingComplete: onEditingComplete ?? () {},
                  validator: validator,
                  onChanged: onChanged ?? (value) {},
                  decoration: InputDecoration(
                    labelText: titleText,
                    counterText: '',
                    isDense: true,
                    counterStyle: const TextStyle(fontSize: 0),
                    contentPadding: contentPadding ?? AppPadding.padding20,
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: hintTextColor,
                      fontSize: hintFontSize,
                    ),
                    errorStyle: TextStyle(
                      color: AppColor.error,
                      fontSize: hintFontSize,
                    ),
                  ),
                  autovalidateMode:
                      autovalidateMode ?? AutovalidateMode.disabled,
                ),
              ),
              endPrefixWidget ?? Container(),
              if (isObscureText)
                GestureDetector(
                  onTapDown: (details) {
                    ref.read(showTextProvider.notifier).state = false;
                  },
                  onTapUp: (details) {
                    ref.read(showTextProvider.notifier).state = true;
                  },
                  child: Padding(
                    padding: AppPadding.padding20,
                    child: const Icon(Icons.visibility_outlined),
                  ),
                )
              else
                Container(),
            ],
          ),
        ),
      );
    },
  );
}
