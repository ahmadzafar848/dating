import 'dart:math';

import 'package:dating_app/common/icon_button.dart';
import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/ui_screens/choose_malefemale_ui.dart';
import 'package:flutter/material.dart';

class StartedInitialWidget extends StatelessWidget {
  const StartedInitialWidget({Key? key}) : super(key: key);

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
                          width: constraints.maxWidth * 0.05,
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.1,
                          child: CustomIconButton(
                            icon: Icons.arrow_back_ios,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.8,
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.05,
                        ),
                      ],
                    )),
                SizedBox(
                  height: constraints.maxHeight * 0.1,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.2,
                  child: Image(
                    image: AssetImage('assets/iconimage.png'),
                    color: AppColor.AppButtonColor10,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.1,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.05,
                  child: Center(
                      child: Text(
                    'Assalamualaikum Welcome to Muss',
                    style: TextStyle(
                        fontSize: size * 0.045, fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.05,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.03,
                  child: Text(
                    'Looks like you are new here                  ',
                    style: TextStyle(
                      fontSize: size * 0.045,
                    ),
                  ),
                ),
                SizedBox(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.05,
                  child: Row(
                    children: [
                      SizedBox(
                        width: size * 0.12,
                      ),
                      SizedBox(
                        width: size * 0.68,
                        child: Text(
                          'FaisalKhan@gmail.com',
                          style: TextStyle(
                              fontSize: size * 0.055,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: size * 0.2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.01,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.03,
                  child: Center(child: Text('Tell us about yourself and Inshallah     '
                  ,style: TextStyle(fontSize: size*0.045),)),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.03,
                  child: Center(child: Text('we will show you great Muslims           '
                  ,style: TextStyle(fontSize: size*0.045),)),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.03,
                  child: Center(child: Text('nearby.                                                       '
                  ,style: TextStyle(fontSize: size*0.045),)),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.1,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.07,
                  child: Center(
                    child: GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ChooseMaleFemaleUI();
                      },));

                    },
                      child: Container(
                        width: size*0.8,
                        decoration: BoxDecoration(
                          color: AppColor.AppButtonColor10,
                          borderRadius: BorderRadius.circular(size * 0.1),
                        ),
                        child: Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              letterSpacing: size*0.005,
                              color: Colors.white,
                                fontWeight: FontWeight.bold, fontSize: size * 0.04),
                          ),
                        ),
                      ),
                    ),
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
