import 'package:dating_app/widgets/chose_malefemale_initial_widget.dart';
import 'package:flutter/material.dart';

import '../const_color_scheme.dart';

class ChooseMaleFemaleUI extends StatelessWidget {
  const ChooseMaleFemaleUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.AppColorBackground,
        body: ChooseMaleFemaleInitialWidget(),),
    );
  }
}
