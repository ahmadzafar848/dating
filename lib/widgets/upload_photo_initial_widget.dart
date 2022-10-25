import 'dart:math';

import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/ui_screens/add_photo_ui.dart';
import 'package:dating_app/ui_screens/addmorephoto_ui.dart';
import 'package:dating_app/widgets/addmorephoto_initial_widget.dart';
import 'package:flutter/material.dart';

class UploadPhotoInitialWidget extends StatelessWidget {
  const UploadPhotoInitialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, constraints) {
        double size = min(constraints.maxHeight, constraints.maxWidth);
        return Column(
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.07,
              child: Padding(
                padding: EdgeInsets.only(right: size * 0.8),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.04,
              child: Center(
                child: Text(
                  'Pinch to crop and scale your photo',
                  style: TextStyle(
                      fontSize: size * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.04,
              child: Center(
                child: Text(
                  'Your face should be fully visible',
                  style: TextStyle(fontSize: size * 0.045, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.6,
              width: constraints.maxWidth * 0.88,
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.2,
              child: Center(
                  child: Container(
                height: constraints.maxHeight * 0.06,
                width: constraints.maxWidth * 0.45,
                child: Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return AddMorePhotoUI();
                      },));

                    },
                    child: Text(
                      'Upload photo',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: AppColor.AppButtonColor10,
                    borderRadius: BorderRadius.circular(12)),
              )),
            ),
          ],
        );
      },
    );
  }
}
