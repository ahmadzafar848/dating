import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/widgets/yourphone_initial_widget.dart';
import 'package:flutter/material.dart';

class YourPhoneUI extends StatelessWidget {
  const YourPhoneUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(resizeToAvoidBottomInset: false,
          backgroundColor: AppColor.AppColorBackground,
          body: YourPhoneInitialWidget()),
    );
  }
}
