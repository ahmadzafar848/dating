import 'dart:math';

import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/ui_screens/born_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaleInitialWidget extends StatelessWidget {
  const MaleInitialWidget({Key? key}) : super(key: key);

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
                              width: constraints.maxWidth * 0.02,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.black),
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.02,
                            ),
                            Container(
                              width: constraints.maxWidth * 0.02,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.black),
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
              height: constraints.maxHeight * 0.3,
              child: Center(
                  child: Image(
                image: AssetImage('assets/male.png'),
                height: size * 0.4,
              )),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
              child: Center(
                  child: Text(
                'What is Your Name?',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size*0.065),
              )),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
              width: constraints.maxWidth*0.75,
              child: TextField(cursorColor: Colors.black,

                decoration: InputDecoration(focusColor: Colors.grey,

                    hintText: 'First Name'),),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.3,
              child: Center(
                child: GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BornUI();
                  },));
                },
                  child: Container(height: constraints.maxHeight*0.07,
                    child: Center(child: Text('Continue',style: TextStyle(color: Colors.white,fontSize: size*0.06,letterSpacing: size*0.004),)),
                    width: constraints.maxWidth*0.8,
                    decoration:BoxDecoration(color: AppColor.AppButtonColor10,borderRadius: BorderRadius.circular(constraints.maxHeight*0.05)),),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
            ),
          ],
        );
      },
    );
  }
}
