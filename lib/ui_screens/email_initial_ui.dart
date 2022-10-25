import 'package:dating_app/widgets/email_initial_widget.dart';
import 'package:flutter/material.dart';

import '../const_color_scheme.dart';

class EmailUI extends StatelessWidget {
  const EmailUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.AppColorBackground,
        body: EmailInitialWidget(),),
    );
  }
}
