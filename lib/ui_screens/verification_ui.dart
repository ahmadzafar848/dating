import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/widgets/verification_initial_widget.dart';
import 'package:flutter/material.dart';

class VerificationUI extends StatelessWidget {
  const VerificationUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.AppColorBackground,
        body: VerificationInitialWidget(),),
    );
  }
}
