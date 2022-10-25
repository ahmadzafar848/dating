import 'dart:math';

import 'package:dating_app/common/icon_button.dart';
import 'package:dating_app/common/textformfield.dart';
import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/ui_screens/started_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailInitialWidget extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  EmailInitialWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
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
                      )),
                  SizedBox(
                    width: constraints.maxWidth * 0.7,
                  ),
                  SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: CustomIconButton(
                        onPressed: () {},
                        icon: Icons.question_mark,
                      )),
                  SizedBox(
                    width: constraints.maxWidth * 0.05,
                  )
                ],
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
              child: Center(
                child: Text(
                  'What is Your email',
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic,
                      fontSize: constraints.maxHeight * 0.04,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
              child: Center(
                child: Text(
                  'address?',
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic,
                      fontSize: constraints.maxHeight * 0.04,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.18,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
              width: constraints.maxWidth * 0.7,
              child: AppTextField(
                icon: Icons.email_outlined,
                label: Text('Enter Email Address'),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),

            ///0.52///
            ///

            SizedBox(
              height: constraints.maxHeight * 0.07,
              width: constraints.maxWidth * 0.7,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return StartedUi();
                    },
                  ));
                },
                child: Padding(
                  padding: EdgeInsets.only(left: size * 0.11),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 3),
                          blurRadius: 5,
                        ),
                        // BoxShadow(offset: Offset(0, 0), color: Colors.white),
                        // BoxShadow(offset: Offset(0, 0), color: Colors.white),
                      ],
                      color: AppColor.AppButtonColor10,
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: constraints.maxHeight * 0.03),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: constraints.maxHeight * 0.15),
            SizedBox(
              height: constraints.maxHeight * 0.05,
              child:
                  Center(child: Text('By Continuing you agree to our Terms')),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
              child: Center(child: Text('and Privacy Policy')),
            ),
            SizedBox(height: constraints.maxHeight * 0.15),
          ],
        );
      },
    );
  }
}
