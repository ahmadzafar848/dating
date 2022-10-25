import 'package:dating_app/widgets/started_initial_widget.dart';
import 'package:flutter/material.dart';

import '../const_color_scheme.dart';

class StartedUi extends StatelessWidget {
  const StartedUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.AppColorBackground,
        resizeToAvoidBottomInset: false,
        body: StartedInitialWidget(),),
    );
  }
}
