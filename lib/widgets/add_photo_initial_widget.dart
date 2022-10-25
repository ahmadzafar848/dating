import 'dart:math';

import 'package:dating_app/const_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui_screens/upload_photo_ui.dart';

class AddPhotoInitialWidget extends StatelessWidget {
  const AddPhotoInitialWidget({Key? key}) : super(key: key);

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
                          icon: Icon(Icons.arrow_back_ios_new_rounded,
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
              child: Padding(
                  padding: EdgeInsets.only(right: size * 0.5),
                  child: Text(
                    'MyPhoto',
                    style: TextStyle(
                        fontSize: size * 0.07, fontWeight: FontWeight.bold),
                  )),
            ),
            GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) {
              return UploadPhotoUI();
            },));},
              child: SizedBox(
                height: constraints.maxHeight * 0.45,
                width: constraints.maxWidth * 0.9,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.camera_alt_outlined),
                      ),
                      Container(
                        height: constraints.maxHeight * 0.06,
                        width: constraints.maxWidth * 0.4,
                        child: Center(
                            child: Text(
                          'Add Photo',
                          style: TextStyle(color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                            color: AppColor.AppButtonColor10,
                            borderRadius: BorderRadius.circular(15)),
                      )
                    ],
                  ),
                  height: constraints.maxHeight,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
              child: Padding(
                padding: EdgeInsets.only(right: size * 0.5),
                child: Center(
                    child: Text(
                  'Photo Guidelines',
                  style: TextStyle(
                      fontSize: size * 0.05, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            SizedBox(
                height: constraints.maxHeight * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    customStackContainer(
                        image: AssetImage('assets/guidline.png')),
                    customStackContainer(
                      image: AssetImage('assets/glassesguideline.png'),
                    ),
                    customStackContainer(
                        image: AssetImage('assets/guidlinegroup.png')),
                  ],
                )),
            SizedBox(
                height: constraints.maxHeight * 0.05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(' Clear face'),
                    Text('no sun_glasses'),
                    Text('no groups'),
                  ],
                )),
            SizedBox(
              height: constraints.maxHeight * 0.1,
              child: Center(
                child: Text(
                  'Finish Later',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: size * 0.06),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class customStackContainer extends StatelessWidget {
  final AssetImage image;

  customStackContainer({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, constraints) {
        double size = min(constraints.maxHeight, constraints.maxWidth);
        return Stack(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.pink,
                shape: BoxShape.circle,
                image: DecorationImage(image: image, fit: BoxFit.cover),
              ),
            ),
            Positioned(
              bottom: size * 0.02,
              right: size * -0.05,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  border:
                      Border.all(color: AppColor.AppColorBackground, width: 2),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
