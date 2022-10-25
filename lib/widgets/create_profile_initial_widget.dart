import 'dart:math';

import 'package:dating_app/ui_screens/your_sect_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const_color_scheme.dart';

class CreateProfileInitialWidget extends StatelessWidget {
  const CreateProfileInitialWidget({Key? key}) : super(key: key);

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
              height: constraints.maxHeight * 0.25,
              child: Align(
                alignment: Alignment.topLeft,
                child: Image(
                  image: AssetImage('assets/boy.png'),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
              child: Text(
                'Ready to create your',
                style: TextStyle(
                    fontSize: size * 0.075, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
              child: Text(
                'own profile?',
                style: TextStyle(
                    fontSize: size * 0.075, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.04,
              child: Text(
                'you would not be seen by other',
                style: TextStyle(fontSize: size * 0.05),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.04,
              child: Text(
                'members until you create and ',
                style: TextStyle(fontSize: size * 0.05),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.04,
              child: Text(
                'verify your profile',
                style: TextStyle(fontSize: size * 0.05),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.02,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.06,
              child: GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) {
                return YourSectUI();
              },));},
                child: Container(
                  child: Center(
                    child: Text(
                      'Create Profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: size * 0.06,
                          letterSpacing: size * 0.004),
                    ),
                  ),
                  width: constraints.maxWidth * 0.8,
                  decoration: BoxDecoration(
                      color: AppColor.AppButtonColor10,
                      borderRadius: BorderRadius.circular(size * 0.05)),
                ),
              ),
            ),
            SizedBox(height: constraints.maxHeight*0.05,),
            SizedBox(
              height: constraints.maxHeight * 0.05,
              child: Text(
                'Ask me later',
                style: TextStyle(
                    fontSize: size * 0.05, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
          ],
        );
      },
    );
  }
}
