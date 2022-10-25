import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/widgets/female_initial_widget.dart';
import 'package:flutter/material.dart';

class FemaleUI extends StatelessWidget {
  const FemaleUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      resizeToAvoidBottomInset: false,
    backgroundColor: AppColor.AppColorBackground,
     body: FemaleInitialWidget(),));
  }
}
