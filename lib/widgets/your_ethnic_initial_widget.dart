import 'dart:math';

import 'package:dating_app/ui_screens/your_education_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YourEthnicInitialWidget extends StatelessWidget {
  YourEthnicInitialWidget({Key? key}) : super(key: key);
  final List<String> ethnic = [
    'Arab',
    'Central',
    'east African',
    'North African',
    'South African',
    'West African',
    'North African',
    'South African',
    'West African'
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (p0, constraints) {
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
                        icon: Icon(Icons.arrow_back_ios_new_outlined,
                            size: size * 0.06),
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
            height: constraints.maxHeight * 0.75,
            child: Row(
              children: [
                SizedBox(
                  width: constraints.maxWidth * 0.1,
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.8,
                  child: Column(
                    children: [

                      SizedBox(
                        height: constraints.maxHeight * 0.05,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'What is your ethnic',
                              style: TextStyle(
                                  fontSize: size * 0.065,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.05,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'group?',
                              style: TextStyle(
                                  fontSize: size * 0.065,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.05,),

                      SizedBox(
                        width: constraints.maxWidth * 0.8,

                        child: TextField(onTap: () {},
                            decoration: InputDecoration(
                                hintText: 'Search jobs')),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.052,
                      ),

                      Container(
                        height: constraints.maxHeight * 0.45,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: ethnic.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return YourEducationUI();
                              },));},
                              child: SizedBox(
                                height: constraints.maxHeight * 0.08,
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '${ethnic[index]}',
                                      style: TextStyle(
                                          fontSize: size * 0.055,
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
            height: constraints.maxHeight * 0.05,
          ),
          SizedBox(
            height: constraints.maxHeight * 0.05,
            child: Text(
              'Finish Later',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: size * 0.06),
            ),
          ),
          SizedBox(
            height: constraints.maxHeight * 0.05,
          ),
        ],
      );
    }
      );



    }
  }

