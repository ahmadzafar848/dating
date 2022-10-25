import 'dart:math';

import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/ui_screens/verification_ui.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BornInitialWidget extends StatefulWidget {
  const BornInitialWidget({Key? key}) : super(key: key);

  @override
  State<BornInitialWidget> createState() => _BornInitialWidgetState();
}

class _BornInitialWidgetState extends State<BornInitialWidget> {
  DateTime dateTime = DateTime.now();
  late String yearText;

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
              child: Image(
                image: AssetImage('assets/boy.png'),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
              child: Center(
                  child: Text(
                'When where you born?',
                style: TextStyle(
                    fontSize: size * 0.08, fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.2,
              child: Center(
                child: GestureDetector(
                  onTap: () async {
                    var date = await showDatePicker(
                        builder: (context, child) {
                          return Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme: ColorScheme.light(
                                primary:
                                    AppColor.AppButtonColor10, // <-- SEE HERE
                                // onPrimary: Colors
                                //     .redAccent, // <-- SEE HERE
                                // onSurface: Colors
                                //     .red, // <-- SEE HERE
                              ),
                              textButtonTheme: TextButtonThemeData(
                                style: TextButton.styleFrom(
                                  primary: AppColor
                                      .AppButtonColor10, // button text color
                                ),
                              ),
                            ),
                            child: child!,
                          );
                        },
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2018),
                        lastDate: DateTime(2024));
                    yearText = "${dateTime.year}";
                    print(yearText);
                    if (date != null && date != dateTime) {
                      setState(() {
                        dateTime = date;
                      });
                    }
                  },
                  child: Container(
                    height: constraints.maxHeight,
                    child: Center(
                      child: Text(
                        dateTime == null
                            ? ''
                            : '${dateTime.year}/${dateTime.month}/${dateTime.day}',
                        style: TextStyle(
                            fontSize: size * 0.08, fontWeight: FontWeight.bold),
                      ),
                    ),
                    width: constraints.maxWidth,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.15,
              child: Center(
                child: Text(
                  'Your Age',
                  style: TextStyle(fontSize: size * 0.07),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.07,
              child: Center(
                child: GestureDetector(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return VerificationUI();
                  },));},
                  child: Container(
                    child: Center(
                      child: Text(
                        'Continue',
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
            ),
            SizedBox(
              height: constraints.maxHeight * 0.08,
            ),
          ],
        );
      },
    );
  }
}
