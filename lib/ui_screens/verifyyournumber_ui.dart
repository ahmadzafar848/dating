import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/widgets/verifyyournumber_initial_widget.dart';
import 'package:flutter/material.dart';

class VerifyYourNumberUI extends StatelessWidget {
  const VerifyYourNumberUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.AppColorBackground,
        body: VerifyYourNumberInitialWidget(),
      ),
    );
  }
}
