import 'dart:math';

import 'package:dating_app/ui_screens/add_photo_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YourEducationInitialWidget extends StatelessWidget {
  YourEducationInitialWidget({Key? key}) : super(key: key);
  final List<String> education = [
    'High School',
    'Non_degree qualification',
    'Undergraduate degree',
    'Postgraduate degree',
    'Doctorate',
    'Other education level'
  ];

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
                          icon: Icon(Icons.cancel, size: size * 0.06),
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
              height: constraints.maxHeight * 0.7,
              child: Row(
                children: [
                  SizedBox(
                    width: constraints.maxWidth * 0.1,
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.9,
                    child: Column(
                      children: [
                        SizedBox(
                          height: constraints.maxHeight * 0.05,
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.05,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'What is your education',
                                style: TextStyle(
                                    fontSize: size * 0.078,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.05,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'level?',
                                style: TextStyle(
                                    fontSize: size * 0.078,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.052,
                        ),
                        Container(
                          height: constraints.maxHeight * 0.45,
                          child: ListView.builder(
                            itemCount: education.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return AddPhotoUI();
                                  },));

                                },
                                child: SizedBox(
                                  height: constraints.maxHeight * 0.08,
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${education[index]}',
                                        style: TextStyle(
                                            fontSize: size * 0.06,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: size * 0.003),
                                      )),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
              child: GestureDetector(
                  onTap: () {

                  },
                  child: Text(
                    'Finish Later',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: size * 0.06),
                  )),
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
