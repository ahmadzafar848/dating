import 'dart:math';

import 'package:dating_app/common/custombuttoncontainer.dart';
import 'package:dating_app/ui_screens/retakeselfie_ui.dart';
import 'package:dating_app/widgets/retakeselfie_initial_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnableCameraInitialWidget extends StatelessWidget {
  const EnableCameraInitialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, constraints) {
        double size = min(constraints.maxHeight, constraints.maxWidth);
        return Column(
          children: [
            SizedBox(
                height: constraints.maxHeight * 0.05,
                child: Row(
                  children: [
                    SizedBox(
                      width: constraints.maxWidth * 0.2,
                      child: IconButton(
                          icon:
                              Icon(Icons.arrow_back_ios_new, size: size * 0.06),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                    SizedBox(
                      width: constraints.maxWidth * 0.6,
                    ),
                    SizedBox(
                      width: constraints.maxWidth * 0.2,
                      child: IconButton(
                          icon: Icon(Icons.language, size: size * 0.05),
                          onPressed: () {}),
                    ),
                  ],
                )),
            SizedBox(
              height: constraints.maxHeight * 0.15,
              child: Image(
                image: AssetImage('assets/enablecamera.png'),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.25,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: size * 0.1),
                  child: RichText(
                    text: TextSpan(
                      text: 'Take a selfie\n',
                      style: TextStyle(
                          fontSize: size * 0.08,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: 'please take a quick selfie to confirm\n',
                            style: TextStyle(
                                fontSize: size * 0.04,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: 'you\'re a real person. your selfie won\'t\n',
                            style: TextStyle(
                                fontSize: size * 0.04,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: 'appear on your profile and will only be\n',
                            style: TextStyle(
                                fontSize: size * 0.04,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: 'seen by our team',
                            style: TextStyle(
                                fontSize: size * 0.04,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.2,
              child: Column(
                children: [
                  SizedBox(
                    height: constraints.maxHeight * 0.05,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: size * 0.1),
                          child: Icon(Icons.emoji_emotions_outlined),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: size * 0.03),
                          child: Text(
                            'Show your face clearly',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size * 0.055),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.15,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: size * 0.2),
                        child: RichText(
                          text: TextSpan(
                            text: 'Make sure you are in a well lit area and\n',
                            style: TextStyle(
                                fontSize: size * 0.04, color: Colors.black),
                            children: [
                              TextSpan(
                                text: 'have both eyes clearly visible(no\n',
                              ),
                              TextSpan(
                                text: 'sunglasses\n',
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.15,
              child: Column(
                children: [
                  SizedBox(
                    height: constraints.maxHeight * 0.05,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: size * 0.1),
                          child: Icon(Icons.camera_alt_outlined),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: size * 0.03),
                          child: Text(
                            'Look forward',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size * 0.055),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: size * 0.2),
                        child: RichText(
                          text: TextSpan(
                            text: 'Hold your phone at eye level and look\n',
                            style: TextStyle(
                                fontSize: size * 0.04, color: Colors.black),
                            children: [
                              TextSpan(
                                text: 'Straight into the camera\n',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.15,
              child: Center(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return RetakeSelfieUI();
                            },
                          ),
                        );
                      },
                      child: CustomButtonContainer(text: 'Enable Camera'))),
            )
          ],
        );
      },
    );
  }
}
