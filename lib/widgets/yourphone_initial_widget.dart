import 'dart:math';

import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/ui_screens/enablecamera_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/custombuttoncontainer.dart';

class YourPhoneInitialWidget extends StatelessWidget {
  const YourPhoneInitialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, constraints) {
        double size = min(constraints.maxHeight, constraints.maxWidth);
        return Column(
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new_rounded),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
              child: Center(
                child: Text(
                  'What is your phone',
                  style: TextStyle(
                      fontSize: size * 0.07, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
              child: Padding(
                padding: EdgeInsets.only(right: size * 0.3),
                child: Text(
                  'number?',
                  style: TextStyle(
                      fontSize: size * 0.07, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
              width: constraints.maxWidth * 0.85,
              child: TextField(
                  decoration: InputDecoration(hintText: "Phone number")),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
              child: Center(
                child: Text(
                  'We never share this information with',
                  style: TextStyle(fontSize: size * 0.05),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
              child: Center(
                child: Text(
                  'anyone and it won\'t be on your profile',
                  style: TextStyle(
                    fontSize: size * 0.05,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.25,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.2,
              child: Center(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return EnableCameraUI();
                        },
                      ));
                    },
                    child: CustomButtonContainer(
                      text: 'Continue',
                    )),
                // child: Container(
                //   child: Center(child: Text('Continue',style: TextStyle(color: Colors.white,fontSize: size*0.055),)),
                //   height: constraints.maxHeight*0.06,
                //   width: constraints.maxWidth*0.85,
                //   decoration:
                //       BoxDecoration(color: AppColor.AppButtonColor10,borderRadius: BorderRadius.circular(15)),
                // ),
              ),
            )
          ],
        );
      },
    );
  }
}
