import 'dart:math';

import 'package:dating_app/ui_screens/create_profile_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const_color_scheme.dart';

class SeeProfileInitialWidget extends StatelessWidget {
  const SeeProfileInitialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, constraints) {
        double size=min(constraints.maxHeight, constraints.maxWidth);
        return Column(
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.1,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.3,
              child: Align(alignment: Alignment.topLeft,
                child: Image(
                  image: AssetImage('assets/boy.png'),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.3,
              child: Row(
                children: [
                  SizedBox(width: constraints.maxWidth*0.1,),
                  SizedBox(
                    width: constraints.maxWidth * 0.8,
                    child: Column(
                      children: [
                        SizedBox(
                          height: constraints.maxHeight * 0.05,

                          child: Align(alignment: Alignment.topLeft,
                              child: Text('Mashallah!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: size*0.07),)),
                        ),
                        SizedBox(height: constraints.maxHeight*0.05,),
                        SizedBox(height: constraints.maxHeight*0.04,child: Align(alignment: Alignment.topLeft,
                            child: Text('we are used your info to find single',style: TextStyle(fontSize: size*0.05),)),),
                        SizedBox(height: constraints.maxHeight*0.05,child: Align(alignment: Alignment.topLeft,
                            child: Text('Muslims we think you like',style: TextStyle(fontSize: size*0.05),)),),
                        SizedBox(height: constraints.maxHeight*0.02,),
                        SizedBox(height: constraints.maxHeight*0.04,child: Align(alignment: Alignment.topLeft,
                            child: Text('we you are ready we will help you',style: TextStyle(fontSize: size*0.05),)),),
                        SizedBox(height: constraints.maxHeight*0.05,child: Align(alignment: Alignment.topLeft,
                            child: Text('set up your own profile',style: TextStyle(fontSize: size*0.05),)),),

                      ],
                    ),
                  ),
                  SizedBox(width: constraints.maxWidth*0.1,)
                ],
              ),
            ),
            SizedBox(height: constraints.maxHeight*0.085,),
            SizedBox(height: constraints.maxHeight * 0.065,child: GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CreateProfileUI();
              },));
            },
              child: Container(
                child: Center(
                  child: Text(
                    'See Profile',
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
            ),),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
          ],
        );
      },
    );
  }
}
