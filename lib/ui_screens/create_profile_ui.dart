import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/widgets/create_profile_initial_widget.dart';
import 'package:flutter/material.dart';

class CreateProfileUI extends StatelessWidget {
  const CreateProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      backgroundColor: AppColor.AppColorBackground,  
      body: CreateProfileInitialWidget(),),
    );
  }
}
