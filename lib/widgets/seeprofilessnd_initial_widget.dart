import 'dart:math';

import 'package:dating_app/common/custombuttoncontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeeProfilesSndInitialWidget extends StatelessWidget {
  const SeeProfilesSndInitialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, constraints) {
        double size = min(constraints.maxHeight, constraints.maxWidth);
        return Column(
          children: [
            SizedBox(height: constraints.maxHeight*0.1,),
            SizedBox(
              height: constraints.maxHeight * 0.3,
              child: Center(
                  child: Image(
                image: AssetImage('assets/search.png'),
              )),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.15,
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Jazakallah,Khan.\n',
                    style: TextStyle(
                        fontSize: size * 0.075,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'We\'re reviewing your\n',
                          style: TextStyle(
                          )),
                      TextSpan(
                          text: 'profile.\n',
                          style: TextStyle(
                          )),

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
                    text: 'once approved we\'ll make your\n',
                    style: TextStyle(
                        fontSize: size * 0.05,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'profile public for other amazing\n',
                          style: TextStyle(

                          )),
                      TextSpan(
                          text: 'Muslims to discover.\n',
                          style: TextStyle(

                          )),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: constraints.maxHeight*0.1,),
            SizedBox(height: constraints.maxHeight*0.2,child: Center(child: CustomButtonContainer(text: 'See Profiles'),),)
          ],
        );
      },
    );
  }
}
