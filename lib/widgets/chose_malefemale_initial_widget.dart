import 'dart:math';

import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/ui_screens/female_ui.dart';
import 'package:dating_app/ui_screens/male_ui.dart';

import 'package:flutter/material.dart';

class ChooseMaleFemaleInitialWidget extends StatelessWidget {
  const ChooseMaleFemaleInitialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('llllllllllllllllllllllllllllllllllllll');

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
                          onPressed: () {Navigator.pop(context);}),
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
              height: constraints.maxHeight * 0.1,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
              child: Center(
                  child: Text(
                'What is your gender?',
                style: TextStyle(
                    fontSize: size * 0.08, fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(height: constraints.maxHeight*0.1,),
            SizedBox(
              height: constraints.maxHeight * 0.3,
              child: Row(
                children: [
                  SizedBox(
                    width: constraints.maxWidth * 0.1,
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.8,
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        GestureDetector(onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                            return MaleUI();
                          },));
                        },
                          child: Container(
                            height: double.infinity,
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(
                                  image: AssetImage('assets/male.png'),
                                  height: size * 0.42,
                                ),
                                Center(child: Text('Male',style: TextStyle(fontSize: size*0.05,fontWeight: FontWeight.bold),)),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return FemaleUI();
                          },));
                        },
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/female.png',
                                ),
                                height: size * 0.41,
                              ),
                              Center(child: Text('female',style: TextStyle(fontSize: size*0.05,fontWeight: FontWeight.bold),)),
                            ],
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
              height: constraints.maxHeight * 0.3,
              child: GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FemaleUI();
              },));},),
            ),
          ],
        );
      },
    );
  }
}
