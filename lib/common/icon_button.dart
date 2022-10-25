import 'dart:math';

import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  VoidCallback? onPressed;
  final Color? color;

  CustomIconButton({Key? key, this.color, required this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, p1) {
        double size = min(p1.maxHeight, p1.maxWidth);
        return Container(
          height: p1.maxHeight,
          width: p1.maxWidth,
          child: Center(
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                color: color,
                size: size * 0.5,
              ),
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    spreadRadius: 1, blurRadius: 0.05, color: Colors.white),
              ]),
        );
      },
    );
  }
}
