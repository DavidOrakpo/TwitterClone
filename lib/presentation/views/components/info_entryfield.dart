import 'package:flutter/material.dart';

import 'constants.dart';
import 'custom_textfield.dart';

class InfoEntryField extends StatelessWidget {
  const InfoEntryField(
      {Key? key,
      this.entryTitle,
      this.controller,
      this.labelText,
      this.suffixIconData,
      this.titleColor,
      this.initialValue,
      this.onFieldSubmitted,
      this.hasTitle = true,
      this.fontWeight,
      this.hasSuffixIcon = true,
      this.hasPreffixIcon = false,
      this.suffixIconColor,
      this.preffixIconColor,
      this.preffixIconData,
      this.focusNode,
      this.focusedBorderColor,
      this.unfocusedBorderColor,
      this.enableInteractiveSelection = true,
      this.enabled = true,
      this.minLines,
      this.maxLines,
      this.textBoxHeight,
      this.textInputType,
      this.textInputAction = TextInputAction.done,
      this.entryBackground,
      this.isPassword = false,
      this.onEditingComplete,
      this.hintText,
      this.isDense,
      this.autovalidateMode,
      this.validator,
      this.preffixIconPressed,
      this.suffixIconPressed})
      : super(key: key);
  final String? entryTitle, labelText;
  final IconData? suffixIconData, preffixIconData;
  final void Function()? suffixIconPressed, preffixIconPressed;
  final Color? titleColor,
      entryBackground,
      focusedBorderColor,
      suffixIconColor,
      preffixIconColor,
      unfocusedBorderColor;
  final bool? isPassword, hasTitle;
  final bool? hasSuffixIcon,
      hasPreffixIcon,
      enabled,
      enableInteractiveSelection;
  final int? minLines, maxLines;
  final FontWeight? fontWeight;
  final double? textBoxHeight;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final void Function(String)? onFieldSubmitted;
  final bool? isDense;
  final String? initialValue, hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function()? onEditingComplete;
  final TextInputType? textInputType;
  final AutovalidateMode? autovalidateMode;
  @override
  Widget build(BuildContext context) {
    return TextEntry(
      finished: onEditingComplete,
      enableInteractiveSelection: enableInteractiveSelection!,
      enabled: enabled!,
      hasTitle: hasTitle!,
      hintText: hintText ?? "",
      onFieldSubmitted: onFieldSubmitted,
      textInputAction: textInputAction,
      initialValue: initialValue,
      autovalidateMode: autovalidateMode,
      isDense: isDense,
      validator: validator,
      entryTitle: entryTitle ?? "",
      titleColor: titleColor,
      titleSize: 14,
      entryController: controller,
      minLines: minLines,
      maxLines: maxLines,
      fontWeight: fontWeight ?? FontWeight.bold,
      cornerRadius: 6,
      isAvenir: true,
      focusNode: focusNode,
      textBoxHeight: textBoxHeight,
      isPassword: isPassword!,
      focusedBorderColor: focusedBorderColor ?? Constants.primaryGray3,
      unfocusedBorderColor: unfocusedBorderColor ?? Colors.transparent,
      labelText: labelText ?? "",
      labelColor: Theme.of(context).colorScheme.inversePrimary,
      entryBackground:
          entryBackground ?? Theme.of(context).colorScheme.secondaryContainer,
      keyboardType: textInputType ?? TextInputType.text,
      hasPrefixIcon: hasPreffixIcon ?? false,
      prefIcon: IconButton(
        onPressed: preffixIconPressed ?? () {},
        splashRadius: 1,
        icon: Icon(
          preffixIconData ?? Icons.email_outlined,
          color: preffixIconColor ?? Constants.primaryGray3,
        ),
      ),
      hasSuffixIcon: hasSuffixIcon ?? false,
      suffIcon: IconButton(
        onPressed: suffixIconPressed ?? () {},
        splashRadius: 1,
        icon: Icon(
          suffixIconData ?? Icons.email_outlined,
          color: suffixIconColor ?? Constants.primaryGray3,
        ),
      ),
    );
  }
}
