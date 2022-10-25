import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/widgets/your_profession_initial_widget.dart';
import 'package:flutter/material.dart';

class YourProfessionUI extends StatelessWidget {
  const YourProfessionUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.AppColorBackground,
        body: YourProfessionInitialWidget(),),
    );
  }
}
