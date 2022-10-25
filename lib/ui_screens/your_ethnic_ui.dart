import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/widgets/your_ethnic_initial_widget.dart';
import 'package:flutter/material.dart';

class YourEthnicUI extends StatelessWidget {
  const YourEthnicUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: AppColor.AppColorBackground,
        resizeToAvoidBottomInset: false,
        body: YourEthnicInitialWidget(),),
    );
  }
}
