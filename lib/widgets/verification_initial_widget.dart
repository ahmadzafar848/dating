import 'dart:math';

import 'package:dating_app/ui_screens/seeprofile_ui.dart';
import 'package:flutter/material.dart';

class VerificationInitialWidget extends StatelessWidget {
  const VerificationInitialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, constraints) {
        double size = min(constraints.maxHeight, constraints.maxWidth);
        return Column(
          children: [
            SizedBox(
                height: constraints.maxHeight * 0.1,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: constraints.maxWidth * 0.03,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.blue),
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.02,
                            ),
                            Container(
                              width: constraints.maxWidth * 0.03,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.blue),
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.02,
                            ),
                            Container(
                              width: constraints.maxWidth * 0.03,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.blue),
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.02,
                            ),
                            Container(
                              width: constraints.maxWidth * 0.03,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.blue),
                            ),
                          ],
                        )),
                    SizedBox(
                      width: constraints.maxWidth * 0.2,
                      child: IconButton(
                          icon: Icon(Icons.language, size: size * 0.05),
                          onPressed: () {}),
                    ),
                  ],
                )),
            SizedBox(
              height: constraints.maxHeight * 0.27,
              child: Image(
                image: AssetImage('assets/boy.png'),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.03,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
              child: Text(
                'Verification Code',
                style: TextStyle(
                    fontSize: size * 0.07,
                    fontWeight: FontWeight.bold,
                    letterSpacing: size * 0.003),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
              child: Center(
                  child: Text(
                'Please enter the 6_digit code sent to',
                style: TextStyle(fontSize: size * 0.045),
              )),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
              child: GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SeeProfileUI();
                },));
              },
                child: Text(
                  'faisalKhanfky333222@gmail.com',
                  style: TextStyle(
                      fontSize: size * 0.05,
                      fontWeight: FontWeight.bold,
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
