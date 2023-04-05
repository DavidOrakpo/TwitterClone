import 'package:flutter/material.dart';

import 'constants.dart';

class TextEntry extends StatefulWidget {
  final Color entryBackground;
  final double cornerRadius;
  final int? maxLines;
  final int? minLines;
  final Color unfocusedBorderColor;
  final double titleSize;
  final Color focusedBorderColor;
  final String labelText;
  final String entryTitle;
  final double labelTextSize;
  final String hintText;
  final void Function()? tapped;
  final void Function()? finished;
  final Color labelColor, hintColor;
  final Color floatingLabelColor;
  final Color? titleColor;
  final FontWeight? fontWeight;
  final TextInputType keyboardType;
  final void Function(String)? onFieldSubmitted;
  final IconButton? suffIcon, prefIcon;
  final bool isPassword, hasTitle;
  final bool isAvenir;
  final FocusNode? focusNode;
  final double? textBoxHeight;
  final AutovalidateMode? autovalidateMode;
  final bool hasSuffixIcon, hasPrefixIcon;
  final TextInputAction? textInputAction;
  final Widget? suffWidget, prefWidget;
  final TextEditingController? entryController;
  final bool enableInteractiveSelection, enabled, readOnly;
  final bool? isDense;
  final String? initialValue;
  final String? Function(String?)? validator;
  const TextEntry(
      {Key? key,
      this.entryBackground = Constants.primaryGray2,
      this.readOnly = false,
      this.cornerRadius = 12,
      this.autovalidateMode,
      this.hintColor = Colors.grey,
      this.initialValue,
      this.minLines,
      this.maxLines = 1,
      this.isDense,
      this.textInputAction = TextInputAction.done,
      this.onFieldSubmitted,
      this.validator,
      this.suffWidget,
      this.keyboardType = TextInputType.none,
      this.isAvenir = false,
      this.focusNode,
      this.hasTitle = true,
      this.enableInteractiveSelection = true,
      this.enabled = true,
      this.textBoxHeight,
      this.entryTitle = "",
      this.unfocusedBorderColor = Constants.primaryGray2,
      this.entryController,
      this.focusedBorderColor = Constants.primaryGray2,
      this.labelText = "",
      this.labelTextSize = 14,
      this.isPassword = false,
      this.fontWeight,
      this.hasSuffixIcon = false,
      this.titleSize = 10,
      this.titleColor,
      this.hintText = "",
      this.suffIcon,
      this.labelColor = Constants.primaryBlack,
      this.floatingLabelColor = Constants.primaryBlack,
      this.tapped,
      this.finished,
      this.prefIcon,
      this.hasPrefixIcon = false,
      this.prefWidget})
      : super(key: key);

  @override
  State<TextEntry> createState() => _TextEntryState();
}

class _TextEntryState extends State<TextEntry> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.hasTitle
            ? Text(
                widget.entryTitle,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: widget.fontWeight ?? FontWeight.bold,
                    color: widget.titleColor ??
                        Theme.of(context).colorScheme.primaryContainer,
                    fontSize: widget.titleSize),
              )
            : const SizedBox(),
        widget.hasTitle
            ? const SizedBox(
                height: 8,
              )
            : const SizedBox(),
        TextFormField(
          validator: widget.validator,
          initialValue: widget.initialValue,
          minLines: widget.minLines,
          maxLines: widget.maxLines,
          controller: widget.entryController,
          autovalidateMode: widget.autovalidateMode,
          onFieldSubmitted: widget.onFieldSubmitted,
          textInputAction: widget.textInputAction,
          enabled: widget.enabled,
          readOnly: widget.readOnly,
          enableInteractiveSelection: widget.enableInteractiveSelection,
          autofocus: false,
          // style: widget.isAvenir
          //     ? TextStyle(
          //         color: Constants.primaryGray4, fontSize: widget.labelTextSize)
          //     : TextStyle(
          //         color: widget.labelColor, fontSize: widget.labelTextSize),
          onTap: widget.tapped,
          keyboardType: widget.keyboardType,
          focusNode: widget.focusNode,
          onEditingComplete: widget.finished,
          obscureText: widget.isPassword,
          decoration: InputDecoration(
              // floatingLabelBehavior: FloatingLabelBehavior.never,
              // contentPadding: EdgeInsets.symmetric(
              //     vertical: widget.textBoxHeight ?? 15, horizontal: 10),

              hintText: widget.hintText,
              // hintStyle: TextStyle(color: widget.labelColor, fontSize: 12),

              labelText: widget.labelText,
              // labelStyle: widget.isAvenir
              //     ? TextStyle(
              //         color: widget.labelColor, fontSize: widget.labelTextSize)
              //     : TextStyle(
              //         color: widget.labelColor, fontSize: widget.labelTextSize),

              // prefixIcon: widget.hasPrefixIcon
              //     ? widget.prefIcon
              //     : widget.prefWidget ??
              //         const SizedBox(
              //           height: 0,
              //           width: 0,
              //         ),
              suffixIcon: widget.hasSuffixIcon
                  ? widget.suffIcon
                  : widget.suffWidget ?? const SizedBox()),
        ),
      ],
    );
  }
}
