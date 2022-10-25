import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/widgets/your_education_initial_widget.dart';
import 'package:flutter/material.dart';

class YourEducationUI extends StatelessWidget {
  const YourEducationUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.AppColorBackground,
        body: YourEducationInitialWidget(),),
    );
  }
}
