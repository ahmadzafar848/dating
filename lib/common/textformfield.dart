import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
typedef ValidationClosure=String? Function(String? value);
class AppTextField extends StatelessWidget {

   AppTextField(
      {super.key,
        this.controller,
        this.closure,
        this.validationKey,
        this.hint,
        this.label,
        this.keyboardType,
        this.obscureText = false,
        this.prefix,
        this.icon,
        this.prefixText,
        this.suffix,
        this.textInputAction,
        this.maxLength,
        this.listinputFormatter});

  final TextEditingController? controller;
  final ValidationClosure? closure;
  final GlobalKey<FormFieldState>? validationKey;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? listinputFormatter;
  final bool obscureText;
  final Widget? prefix;
  final Widget? suffix;
  final String? hint;
  final String? prefixText;
  final Widget? label;
  final IconData? icon;

  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: validationKey,
      inputFormatters: listinputFormatter,
      validator: closure,
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      cursorColor: Colors.black,
      onChanged: (value) {
        if (validationKey != null) {
          validationKey!.currentState?.validate();
        }
      },
      decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.black,
          ),
          prefixText: prefixText,
          label: label,
          labelStyle: TextStyle(color: Colors.grey.shade700),
          suffixIcon: suffix,
          hintText: hint,
          contentPadding: const EdgeInsets.only(left: 8, top: 20, bottom: 0),
          hintStyle: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.grey),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.black)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.grey))),
    );
  }
}