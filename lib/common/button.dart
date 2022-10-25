import 'package:dating_app/const_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData? icon;
  final Color? color;
  final String text;
  const CustomButton(
      {Key? key,
      this.color,
      this.icon,
      required this.onPressed,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        color: AppColor.AppButtonDarkColor,
        child: Text(
          text,
        ));
  }
}
