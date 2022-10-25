import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const_color_scheme.dart';

class CustomButtonContainer extends StatelessWidget {
  final String text;
   Color ? color;
  CustomButtonContainer({ this.color,required this.text,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (p0, constraints) {
      double size=min(constraints.maxHeight, constraints.maxWidth);
      return Container(child: Center(child: Text("$text",
        style: TextStyle(color: Colors.white, fontSize: 20),)),
        height: 47,
        width: constraints.maxWidth * 0.85,
        decoration:
        BoxDecoration(color: AppColor.AppButtonColor10,
            borderRadius: BorderRadius.circular(15)),
      );
    }
      );

  }
}
