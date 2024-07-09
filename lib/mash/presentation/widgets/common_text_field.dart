import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String title;
  final bool? required;
  final Widget? prefix;
  final Widget? suffix;
  final Widget? widgetLabel;
  final TextInputType? textInputType;
  final bool? enable;
  final bool? isCaps;
  final Function(String)? validator;
  final bool? passwordField;
  final int? lines;
  final bool? isOutlined;
  final void Function(String?)? onChange;
  CommonTextField({
    super.key,
    required this.title,
    this.prefix,
    this.required,
    this.suffix,
    this.widgetLabel,
    this.enable,
    this.controller,
    this.validator,
    this.textInputType,
    this.passwordField,
    this.lines,
    this.isOutlined,
    this.isCaps = false,
    this.onChange,
  });

  final ValueNotifier<bool> showPasswordNotifier = ValueNotifier<bool>(true);
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: showPasswordNotifier,
      builder: (context, showPassword, _) {
        return TextFormField(
          onChanged: onChange,
          textCapitalization: TextCapitalization.sentences,
          style: const TextStyle(fontSize: 18),
          controller: controller,
          autovalidateMode: controller?.text.isNotEmpty == true
              ? AutovalidateMode.always
              : null,
          validator: validator == null ? null : (val) => validator!(val ?? ""),
          focusNode: _focusNode,
          inputFormatters: isCaps == true
              ? [
                  UpperCaseTextFormatter(),
                ]
              : [],
          obscureText: passwordField == true ? showPassword : false,
          keyboardType: textInputType ?? TextInputType.text,
          maxLines: passwordField == true ? 1 : lines,
          decoration: InputDecoration(
            border: isOutlined == true
                ? const OutlineInputBorder()
                : const UnderlineInputBorder(),
            contentPadding: isOutlined == true
                ? const EdgeInsets.symmetric(horizontal: 12)
                : EdgeInsets.zero,
            prefixIcon: prefix,
            suffixIcon: passwordField == true
                ? IconButton(
                    onPressed: () {
                      showPasswordNotifier.value = !showPasswordNotifier.value;
                    },
                    icon: showPassword
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  )
                : suffix,
            label: widgetLabel ??
                Text(
                  title,
                  style: const TextStyle(color: Colors.grey),
                ),
            enabled: enable ?? true,
          ),
        );
      },
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

class ChatTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String title;
  final bool? required;
  final Widget? prefix;
  final Widget? suffix;
  final Widget? widgetLabel;
  final TextInputType? textInputType;
  final bool? enable;
  final bool? isCaps;
  final Function(String)? validator;
  final bool? passwordField;
  final int? lines;

  ChatTextField({
    super.key,
    required this.title,
    this.prefix,
    this.required,
    this.suffix,
    this.widgetLabel,
    this.enable,
    this.controller,
    this.validator,
    this.textInputType,
    this.passwordField,
    this.lines,
    this.isCaps = false,
  });

  final ValueNotifier<bool> showPasswordNotifier = ValueNotifier<bool>(true);
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: showPasswordNotifier,
      builder: (context, showPassword, _) {
        return TextFormField(
          textCapitalization: TextCapitalization.sentences,
          style:
              TextStyle(fontSize: 16, color: AppColors.black.withOpacity(0.8)),
          controller: controller,
          autovalidateMode: controller?.text.isNotEmpty == true
              ? AutovalidateMode.always
              : null,
          validator: validator == null ? null : (val) => validator!(val ?? ""),
          focusNode: _focusNode,
          inputFormatters: isCaps == true
              ? [
                  UpperCaseTextFormatter(),
                ]
              : [],
          obscureText: passwordField == true ? showPassword : false,
          keyboardType: textInputType ?? TextInputType.text,
          maxLines: passwordField == true ? 1 : lines,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
                borderSide: BorderSide.none),
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            prefixIcon: prefix,
            fillColor: AppColors.primaryColor.withOpacity(0.1),
            filled: true,
            suffixIcon: passwordField == true
                ? IconButton(
                    onPressed: () {
                      showPasswordNotifier.value = !showPasswordNotifier.value;
                    },
                    icon: showPassword
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  )
                : suffix,
            label: widgetLabel ??
                Text(
                  title,
                  style: const TextStyle(color: Colors.grey),
                ),
            enabled: enable ?? true,
          ),
        );
      },
    );
  }
}
