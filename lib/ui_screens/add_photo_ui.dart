import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/widgets/add_photo_initial_widget.dart';
import 'package:flutter/material.dart';

class AddPhotoUI extends StatelessWidget {
  const AddPhotoUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor:AppColor.AppColorBackground,body: AddPhotoInitialWidget(),));
  }
}
