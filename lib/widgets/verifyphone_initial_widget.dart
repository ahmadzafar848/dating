import 'dart:math';

import 'package:dating_app/common/custombuttoncontainer.dart';
import 'package:dating_app/ui_screens/yourphone_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const_color_scheme.dart';
import 'package:cupertino_stepper/cupertino_stepper.dart';

class VerifyPhoneInitialWidget extends StatelessWidget {
  const VerifyPhoneInitialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, constraints) {
        double size = min(constraints.maxHeight, constraints.maxWidth);
        return Column(
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.07,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.23,
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
                              'Let\'s verify your identity,',
                              style: TextStyle(
                                fontSize: size * 0.065,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.05,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Faisal Khan',
                              style: TextStyle(
                                  fontSize: size * 0.065,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: size * 0.003),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.01,
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.04,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'we take user safety seriously.',
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
                              'Complete the following steps to get',
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
                              'verified.',
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
              height: constraints.maxHeight * 0.55,
              child: Column(
                children: [
                  SizedBox(
                      height: constraints.maxHeight * 0.13,
                      child: Stack(
                        children: [
                          Positioned(
                              left: size * 0.15,
                              top: size * 0.05,
                              child: Container(
                                height: constraints.maxHeight * 0.2,
                                width: constraints.maxWidth * 0.01,
                                color: Colors.black,
                              )),
                          Padding(padding: EdgeInsets.only(bottom: size*0.1),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: constraints.maxWidth * 0.3,
                                  child: Container(
                                    child: Center(
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                      ),
                                    ),
                                    height: constraints.maxHeight * 0.06,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  width: constraints.maxWidth * 0.2,
                                  child: Center(
                                      child: Text(
                                    'Email',
                                    style: TextStyle(
                                        fontSize: size * 0.05,
                                        fontWeight: FontWeight.bold),
                                  )),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                      height: constraints.maxHeight * 0.13,
                      child: Stack(
                        children: [
                          Positioned(
                              left: size * 0.15,
                              top: size * 0.1,
                              child: Container(
                                height: constraints.maxHeight * 0.1,
                                width: constraints.maxWidth * 0.01,
                                color: Colors.black,
                              )),
                          Padding(padding: EdgeInsets.only(bottom:size*0.14 ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: constraints.maxWidth * 0.3,
                                  child: Center(
                                    child: Container(
                                      child: Center(
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        ),
                                      ),
                                      height: constraints.maxHeight * 0.06,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constraints.maxWidth * 0.2,
                                  child: Center(
                                      child: Text(
                                    'Phone',
                                    style: TextStyle(
                                        fontSize: size * 0.05,
                                        fontWeight: FontWeight.bold),
                                  )),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                      height: constraints.maxHeight * 0.13,
                      child: Stack(
                        children: [
                          Positioned(
                              left: size * 0.15,
                              top: size * 0.1,
                              child: Container(
                                height: constraints.maxHeight * 0.1,
                                width: constraints.maxWidth * 0.01,
                                color: Colors.black,
                              )),
                          Padding(padding: EdgeInsets.only(bottom:size*0.14 ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: constraints.maxWidth * 0.3,
                                  child: Center(
                                    child: Container(
                                      child: Center(
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        ),
                                      ),
                                      height: constraints.maxHeight * 0.06,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constraints.maxWidth * 0.2,
                                  child: Center(
                                      child: Text(
                                        'Selfie',
                                        style: TextStyle(
                                            fontSize: size * 0.05,
                                            fontWeight: FontWeight.bold),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                      height: constraints.maxHeight * 0.13,
                      child: Stack(
                        children: [
                          Positioned(
                              left: size * 0.15,
                              top: size * 0.1,
                              child: Container(
                                height: constraints.maxHeight * 0.1,
                                width: constraints.maxWidth * 0.01,
                                color: Colors.black,
                              )),
                          Padding(padding: EdgeInsets.only(bottom:size*0.14 ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: constraints.maxWidth * 0.3,
                                  child: Center(
                                    child: Container(
                                      child: Center(
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        ),
                                      ),
                                      height: constraints.maxHeight * 0.06,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constraints.maxWidth * 0.2,
                                  child: Center(
                                      child: Text(
                                        'Islamic',
                                        style: TextStyle(
                                            fontSize: size * 0.05,
                                            fontWeight: FontWeight.bold),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: constraints.maxWidth * 0.5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.07,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return YourPhoneUI();
                    },));
                  },
                  child: CustomButtonContainer(text: 'Verify Phone',)
                ),
              ),
            ),

            SizedBox(
              height: constraints.maxHeight * 0.08,
              child: Center(
                child: Text(
                  'Skip for now',
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

// Copyright 2020 J-P Nurmi <jpnurmi@gmail.com>
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
class CustomContainer extends StatelessWidget {
  final Color color;
  final Text text;

  CustomContainer({required this.color, required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, constraints) {
        return Row(
          children: [
            SizedBox(
              width: constraints.maxWidth * 0.5,
              child: Container(
                height: constraints.maxHeight * 0.1,
                child: Icon(
                  Icons.check,
                  color: color,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(
              width: constraints.maxWidth * 0.5,
              child: Text('lkjlkjkljlkjkl'),
            )
          ],
        );
      },
    );
  }
}
