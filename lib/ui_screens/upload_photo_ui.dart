import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/widgets/upload_photo_initial_widget.dart';
import 'package:flutter/material.dart';

class UploadPhotoUI extends StatelessWidget {
  const UploadPhotoUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.black,
        body: UploadPhotoInitialWidget(),),
    );
  }
}
