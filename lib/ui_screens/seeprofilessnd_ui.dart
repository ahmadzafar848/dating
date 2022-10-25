import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/widgets/seeprofilessnd_initial_widget.dart';
import 'package:flutter/material.dart';

class SeeProfilesSndUI extends StatelessWidget {
  const SeeProfilesSndUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(backgroundColor:AppColor.AppColorBackground,body: SeeProfilesSndInitialWidget(),));
  }
}
