import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/widgets/born_initial_widget.dart';
import 'package:flutter/material.dart';

class BornUI extends StatelessWidget {
  const BornUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.AppColorBackground,
        body: BornInitialWidget(),),
    );
  }
}
