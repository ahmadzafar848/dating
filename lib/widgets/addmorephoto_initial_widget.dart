import 'dart:math';

import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/ui_screens/getverified_ui.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddMorePhotoInitialWidget extends StatelessWidget {
  AddMorePhotoInitialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, constraints) {
        double size = min(constraints.maxHeight, constraints.maxWidth);
        return Column(
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.1,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.12,
              child: Padding(
                padding: EdgeInsets.only(right: size * 0.4),
                child: Text(
                  'Add more photo',
                  style: TextStyle(
                      fontSize: size * 0.06, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
                height: constraints.maxHeight * 0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DottedBorder(
                      dashPattern: [3, 4],
                      strokeWidth: 1,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(12),
                      child: Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt_outlined),
                        ),
                        height: double.infinity,
                        width: constraints.maxWidth * 0.3,
                      ),
                    ),
                    DottedBorder(
                      dashPattern: [3, 4],
                      strokeWidth: 1,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(12),
                      child: Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt_outlined),
                        ),
                        height: double.infinity,
                        width: constraints.maxWidth * 0.3,
                      ),
                    ),
                    DottedBorder(
                      dashPattern: [3, 4],
                      strokeWidth: 1,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(12),
                      child: Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt_outlined),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        height: double.infinity,
                        width: constraints.maxWidth * 0.3,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: constraints.maxHeight * 0.03,
            ),
            SizedBox(
                height: constraints.maxHeight * 0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DottedBorder(
                      dashPattern: [3, 4],
                      strokeWidth: 1,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(12),
                      child: Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt_outlined),
                        ),
                        height: double.infinity,
                        width: constraints.maxWidth * 0.3,
                      ),
                    ),
                    DottedBorder(
                      dashPattern: [3, 4],
                      strokeWidth: 1,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(12),
                      child: Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt_outlined),
                        ),
                        height: double.infinity,
                        width: constraints.maxWidth * 0.3,
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.circleInfo),
                          ),
                          Text('Photo Guideline')
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      height: double.infinity,
                      width: constraints.maxWidth * 0.3,
                    ),
                  ],
                )),
            SizedBox(
              height: constraints.maxHeight * 0.25,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return GetVerifiedUI();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: constraints.maxHeight * 0.06,
                    width: constraints.maxWidth * 0.8,
                    child: Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size * 0.045,
                            letterSpacing: size * 0.003),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColor.AppButtonColor10),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
