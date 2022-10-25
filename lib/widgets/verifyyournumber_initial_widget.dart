import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerifyYourNumberInitialWidget extends StatelessWidget {
  const VerifyYourNumberInitialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (p0, constraints) {
      double size=min(constraints.maxHeight, constraints.maxWidth);
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
                  SizedBox(width: constraints.maxWidth*0.6,),

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
            child: Center(
              child: Text(
                'Verify your number?',
                style: TextStyle(
                    fontSize: size * 0.06,
                    fontWeight: FontWeight.bold,
                    letterSpacing: size * 0.003),
              ),
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
            child: Padding(
              padding: EdgeInsets.only(right: size*0.3),
              child: Text(
                '+923015570178',
                style: TextStyle(
                    fontSize: size * 0.05,
                    fontWeight: FontWeight.bold,
                    letterSpacing: size * 0.002),
              ),
            ),
          ),
        ],
      );
    },);
  }
}
