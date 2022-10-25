import 'dart:math';

import 'package:dating_app/ui_screens/welcomeuser_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/custombuttoncontainer.dart';

class RetakeSelfieInitialWidget extends StatelessWidget {
  const RetakeSelfieInitialWidget({Key? key}) : super(key: key);

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
              height: constraints.maxHeight * 0.1,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.15,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white)),
                  )),
            ),
            SizedBox(height: constraints.maxHeight * 0.1,
              child: Center(child: Text('Thanks Khan', style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: size * 0.07),),),),
            SizedBox(
              height: constraints.maxHeight * 0.1,
              child: Align(alignment: Alignment.topCenter,
                child: RichText(
                  text: TextSpan(
                    text: 'To keep our members safe,we\'ll\n',
                    style: TextStyle(
                        fontSize: size * 0.045,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'quickly compare your photos to\n',
                          style: TextStyle(
                              fontSize: size * 0.045,
                              fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: 'your Selfie Verification.\n',
                          style: TextStyle(
                              fontSize: size * 0.045,
                              fontWeight: FontWeight.normal)),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.15,
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: 'your selfie won\'t appear on your\n',
                    style:
                    TextStyle(fontSize: size * 0.045,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: 'profile and will only be seen by \n',
                      ),
                      TextSpan(
                        text: 'our team.',
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: constraints.maxHeight * 0.15,),
            SizedBox(
              height: constraints.maxHeight * 0.1,
              child: Center(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return WelcomeUserUI();
                            },
                          ),
                        );
                      },
                      child: CustomButtonContainer(text: 'Continue'))),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
              child: Center(
                child: Text(
                  'Retake Selfie',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
