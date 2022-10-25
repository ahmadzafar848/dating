import 'dart:math';

import 'package:dating_app/ui_screens/seeprofilessnd_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/custombuttoncontainer.dart';

class WelcomeUserInitialWidget extends StatelessWidget {
  const WelcomeUserInitialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, constraints) {
        double size = min(constraints.maxHeight, constraints.maxWidth);
        return Column(
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.2,
              child: Center(
                  child: Image(
                    image: AssetImage(
                      'assets/bismilah.png',
                    ),
                  )),
            ),
            SizedBox(height: constraints.maxHeight * 0.1,
              child: Center(child: Text('Welcome Khan!', style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: size * 0.07),),),),
            SizedBox(
              height: constraints.maxHeight * 0.1,
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Muss is a place for those seriously\n',
                    style: TextStyle(
                        fontSize: size * 0.045,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'seeking marriage\n',
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
                    text: 'keep thing halal.please adhere to\n',
                    style: TextStyle(
                        fontSize: size * 0.045,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'sensible Islamic etiquette and follow\n',
                          style: TextStyle(
                              fontSize: size * 0.045,
                              fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: 'our guidelines.\n',
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
                    text: 'Inappropriate behaviour will result\n',
                    style: TextStyle(
                        fontSize: size * 0.045,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'in your account being permanently\n',
                          style: TextStyle(
                            fontSize: size * 0.045,
                          )),
                      TextSpan(
                          text: 'blocked.\n',
                          style: TextStyle(
                            fontSize: size * 0.045,
                          )),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: constraints.maxHeight * 0.1,),

            SizedBox(height: constraints.maxHeight * 0.1,
              child: Center(child: GestureDetector(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SeeProfilesSndUI();
                },));
              },
                  child: CustomButtonContainer(text: 'Continue')),),),
            SizedBox(height: constraints.maxHeight * 0.1,
              child: Center(child: RichText(
                text: TextSpan(
                  text: 'By Continuing you agree to our ',
                  style: TextStyle(
                      fontSize: size * 0.035,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                  children: [
                    TextSpan(
                        text: 'Terms ',
                        style: TextStyle(
                            decoration: TextDecoration.underline
                        )),
                    TextSpan(text: 'and\n'),
                    TextSpan(text: 'Privacy Policy',
                        style: TextStyle(decoration: TextDecoration.underline)),


                  ],
                ),
              ),),),
          ],
        );
      },
    );
  }
}
