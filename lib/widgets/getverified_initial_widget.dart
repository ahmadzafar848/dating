import 'dart:math';

import 'package:dating_app/ui_screens/verifyphone_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const_color_scheme.dart';

class GetVerifiedInitialWidget extends StatelessWidget {
  const GetVerifiedInitialWidget({Key? key}) : super(key: key);

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
              height: constraints.maxHeight * 0.3,
              child: Center(
                child: Image(
                  image: AssetImage('assets/boy.png'),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.2,
              child: Row(
                children: [
                  SizedBox(
                    width: constraints.maxWidth * 0.1,
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.8,
                    child: Column(
                      children: [
                        SizedBox(
                          height: constraints.maxHeight * 0.05,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Ready to meet great',
                              style: TextStyle(
                                  fontSize: size * 0.068,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: size * 0.003),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.05,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'single muslims?',
                              style: TextStyle(
                                  fontSize: size * 0.068,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: size * 0.003),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.02,
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.04,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Let\'s get you verified so we can',
                              style: TextStyle(
                                fontSize: size * 0.05,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.04,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'show your profile to other members',
                              style: TextStyle(
                                fontSize: size * 0.05,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.1,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.22,
              child: Align(alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return VerifyPhoneUI();
                    },));

                  },
                  child: Container(
                    height: constraints.maxHeight * 0.06,
                    width: constraints.maxWidth * 0.8,
                    child: Center(
                      child: Text(
                        'Get Verified',
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
            ),
            SizedBox(
              height: constraints.maxHeight * 0.13,
              child: Center(
                child: Text(
                  'Ask me later',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size * 0.045,
                      letterSpacing: size * 0.002),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
