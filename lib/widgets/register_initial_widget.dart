import 'package:dating_app/common/icon_button.dart';
import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/ui_screens/email_initial_ui.dart';
import 'package:dating_app/widgets/email_initial_widget.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterInitialWidget extends StatelessWidget {
  RegisterInitialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
            builder: (context, constraints)
    {
      return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/datingmuss.jpg'))),
        child: Column(
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.02,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.08,
              child: Row(
                children: [
                  SizedBox(
                    width: constraints.maxWidth * 0.05,
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.1,
                    child: CustomIconButton(
                      icon: Icons.language,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.7,
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.1,
                    child: CustomIconButton(
                      icon: Icons.question_mark,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.05,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.03,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.07,
              child: Text(
                'Muss App',
                style: GoogleFonts.lato(
                  color: Colors.white
                  ,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: constraints.maxHeight * 0.05,
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
              child: Text(
                ' Where Muslims Meet',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: constraints.maxHeight * 0.018,
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.5,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.2,
              child: LayoutBuilder(
                builder: (p0, p1) {
                  return Column(
                    children: [
                      SizedBox(
                        height: constraints.maxHeight * 0.05,
                        child: Container(
                          child: Row(
                            children: [
                              SizedBox(
                                width: constraints.maxWidth * 0.02,
                              ),
                              Image(
                                width: constraints.maxWidth * 0.03,
                                image: AssetImage(
                                  'assets/fb.png',
                                ),
                              ),
                              SizedBox(
                                width: constraints.maxWidth * 0.45,
                                child: Center(
                                    child: Text(
                                      'Continue with Facebook',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2,
                                        fontSize:
                                        constraints.maxHeight * 0.014,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          height: constraints.maxHeight * 0.05,
                          width: constraints.maxWidth * 0.55,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 1,
                                  color: Colors.white),
                            ],
                            color: AppColor.AppButtonDarkColor,
                            borderRadius: BorderRadius.circular(
                                constraints.maxWidth * 0.02),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.02,
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.05,
                        child: Container(
                          child: Row(
                            children: [
                              SizedBox(
                                width: constraints.maxWidth * 0.02,
                              ),
                              Image(
                                width: constraints.maxWidth * 0.03,
                                image: AssetImage(
                                  'assets/googleimage.png',
                                ),
                              ),
                              SizedBox(
                                width: constraints.maxWidth * 0.4,
                                child: Center(
                                    child: Text(
                                      'Continue with Google',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2,
                                        fontSize:
                                        constraints.maxHeight * 0.014,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          height: constraints.maxHeight * 0.05,
                          width: constraints.maxWidth * 0.55,
                          decoration: BoxDecoration(
                            color: AppColor.AppButtonDarkColor,
                            borderRadius: BorderRadius.circular(
                                constraints.maxWidth * 0.02),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 1,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.03,
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.03,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return EmailUI();
                              },
                            ));
                          },
                          child: Text(
                            'Continue with email',
                            style: GoogleFonts.lato(
                              color: Colors.grey.shade900,
                              fontStyle: FontStyle.italic,
                              fontSize: constraints.maxHeight * 0.021,
                            ),
                          ),
                        ),
                      ),

                    ],
                  );
                },
              ),
            ),
            SizedBox(height: constraints.maxHeight*0.05,)
          ],
        ),
      );
    });
  }
}

// import 'dart:ui';
//
// import 'package:flutter/material.dart';
//
// import 'email_initial_widget.dart';
//
// class RegisterScreen extends StatelessWidget {
//   const RegisterScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return Container(
//             height: constraints.maxHeight,
//             width: constraints.maxWidth,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/glassbackground.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: constraints.maxHeight * 0.05,
//                 ),
//                 SizedBox(
//                   height: constraints.maxHeight * 0.2,
//                   width: constraints.maxWidth * 0.8,
//                   child: Container(
//                     decoration: BoxDecoration(boxShadow: [
//                       BoxShadow(
//                         blurRadius: 24,
//                         spreadRadius: 16,
//                         color: Colors.black.withOpacity(0.2),
//                       ),
//                     ]),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(16.0),
//                       child: BackdropFilter(
//                         filter: ImageFilter.blur(
//                           sigmaY: 20.0,
//                           sigmaX: 20.0,
//                         ),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white.withOpacity(0.2),
//                             borderRadius: BorderRadius.circular(12),
//                             border: Border.all(
//                               width: 1,
//                               color: Colors.white.withOpacity(0.3),
//                             ),
//                           ),
//                           child: LayoutBuilder(
//                             builder: (p0, p1) {
//                               return Column(
//                                 children: [
//                                   SizedBox(
//                                     height: p1.maxHeight * 0.3,
//                                   ),
//                                   SizedBox(
//                                     height: p1.maxHeight * 0.3,
//                                     child: Text(
//                                       'Muss App',
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.bold,
//                                         letterSpacing: 2,
//                                         fontSize: constraints.maxHeight * 0.05,
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: p1.maxHeight * 0.05,
//                                   ),
//                                   SizedBox(
//                                     height: p1.maxHeight * 0.1,
//                                     child: Text(
//                                       ' Where Muslims Meet',
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.bold,
//                                         letterSpacing: 2,
//                                         fontSize: constraints.maxHeight * 0.018,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               );
//                             },
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: constraints.maxHeight * 0.4,
//                 ),
//                 SizedBox(
//                   height: constraints.maxHeight * 0.3,
//                   width: constraints.maxWidth * 0.8,
//                   child: Container(
//                     decoration: BoxDecoration(boxShadow: [
//                       BoxShadow(
//                         blurRadius: 24,
//                         spreadRadius: 16,
//                         color: Colors.black.withOpacity(0.2),
//                       ),
//                     ]),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(16.0),
//                       child: BackdropFilter(
//                         filter: ImageFilter.blur(
//                           sigmaY: 20.0,
//                           sigmaX: 20.0,
//                         ),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white.withOpacity(0.2),
//                             borderRadius: BorderRadius.circular(12),
//                             border: Border.all(
//                               width: 1,
//                               color: Colors.white.withOpacity(0.3),
//                             ),
//                           ),
//                           child: LayoutBuilder(
//                             builder: (p0, p1) {
//                               return Column(
//                                 children: [
//                                   SizedBox(
//                                     height: p1.maxHeight * 0.2,
//                                   ),
//                                   SizedBox(
//                                     height: p1.maxHeight * 0.2,
//                                     child: Container(
//                                       child: Row(
//                                         children: [
//                                           SizedBox(
//                                             width: constraints.maxWidth * 0.05,
//                                           ),
//                                           Image(
//                                             width: constraints.maxWidth * 0.03,
//                                             image: AssetImage(
//                                               'assets/fb.png',
//                                             ),
//                                             color: Colors.black,
//                                           ),
//                                           SizedBox(
//                                             width: constraints.maxWidth * 0.04,
//                                           ),
//                                           SizedBox(
//                                             width: constraints.maxWidth * 0.5,
//                                             child: Center(
//                                                 child: Text(
//                                               'Continue with Facebook',
//                                               style: TextStyle(
//                                                 color: Colors.black,
//                                                 fontWeight: FontWeight.bold,
//                                                 letterSpacing: 2,
//                                                 fontSize:
//                                                     constraints.maxHeight *
//                                                         0.03,
//                                               ),
//                                             )),
//                                           ),
//                                         ],
//                                       ),
//                                       height: constraints.maxHeight * 0.05,
//                                       width: constraints.maxWidth * 0.7,
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.circular(
//                                             constraints.maxWidth * 0.1),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: p1.maxHeight * 0.05,
//                                   ),
//                                   SizedBox(
//                                     height: p1.maxHeight * 0.2,
//                                     child: Container(
//                                       child: Row(
//                                         children: [
//                                           SizedBox(
//                                             width: constraints.maxWidth * 0.05,
//                                           ),
//                                           Image(
//                                             width: constraints.maxWidth * 0.03,
//                                             image: AssetImage(
//                                               'assets/googleimage.png',
//                                             ),
//                                             color: Colors.black,
//                                           ),
//                                           SizedBox(
//                                             width: constraints.maxWidth * 0.02,
//                                           ),
//                                           SizedBox(
//                                             width: constraints.maxWidth * 0.5,
//                                             child: Center(
//                                                 child: Text(
//                                               'Continue with Google',
//                                               style: TextStyle(
//                                                   color: Colors.black,
//                                                   fontWeight: FontWeight.bold,
//                                                   letterSpacing: 2,
//                                                   fontSize:
//                                                       constraints.maxHeight *
//                                                           0.03),
//                                             )),
//                                           ),
//                                         ],
//                                       ),
//                                       height: constraints.maxHeight * 0.2,
//                                       width: constraints.maxWidth * 0.7,
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.circular(
//                                             constraints.maxWidth * 0.1),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: p1.maxHeight * 0.05,
//                                   ),
//                                   SizedBox(
//                                     height: p1.maxHeight * 0.2,
//                                     child: Align(
//                                       alignment: Alignment.bottomCenter,
//                                       child: GestureDetector(
//                                         onTap: () {
//                                           Navigator.push(context,
//                                               MaterialPageRoute(
//                                             builder: (context) {
//                                               return EmailInitialUI();
//                                             },
//                                           ));
//                                         },
//                                         child: SizedBox(
//                                           height: constraints.maxHeight * 0.1,
//                                           child: Text(
//                                             'Continue with email',
//                                             style: TextStyle(
//                                               color: Colors.black,
//                                               fontWeight: FontWeight.bold,
//                                               letterSpacing: 2,
//                                               fontSize:
//                                                   constraints.maxHeight * 0.03,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               );
// //                             },
// //                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: constraints.maxHeight * 0.05,
//                 ),
//               ],
//             ),
//           );
//           // return Container(
//           //   height: constraints.maxHeight,
//           //   width: constraints.maxWidth,
//           //   decoration: BoxDecoration(
//           //     image: DecorationImage(
//           //         image: AssetImage('assets/glassbackground.png'),
//           //         fit: BoxFit.cover),
//           //   ),
//           //   child: Container(
//           //     height: constraints.maxHeight * 0.7,
//           //     width: constraints.maxWidth * 0.7,
//           //     decoration: BoxDecoration(
//           //         boxShadow: [
//           //           BoxShadow(
//           //             blurRadius: 24,
//           //             spreadRadius: 16,
//           //             color: Colors.black.withOpacity(0.2),
//           //           ),
//           //         ],
//           //         borderRadius:
//           //             BorderRadius.circular(constraints.maxHeight * 0.1),
//           //         border: Border.all(
//           //             width: 0.5, color: Colors.white.withOpacity(0.3))),
//           //     child: ClipRRect(
//           //       borderRadius:
//           //           BorderRadius.circular(constraints.maxHeight * 0.1),
//           //       child: BackdropFilter(
//           //           filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
//           //           child: Column(
//           //             children: [
//           //               Container(
//           //                   height: constraints.maxHeight * 0.6,
//           //                   width: constraints.maxWidth * 0.9,
//           //                   decoration: BoxDecoration(
//           //                       color: Colors.white.withOpacity(0.2),
//           //                       borderRadius: BorderRadius.circular(
//           //                           constraints.maxHeight * 0.1),
//           //                       border: Border.all(
//           //                           width: 0.5,
//           //                           color: Colors.white.withOpacity(0.3))),
//           //                   child: LayoutBuilder(
//           //                     builder: (p0, p1) {
//           //                       return Column(
//           //                         children: [
//           //                           SizedBox(
//           //                             height: p1.maxHeight * 0.02,
//           //                           ),
//           //                           SizedBox(
//           //                             height: p1.maxHeight * 0.07,
//           //                             child: Text(
//           //                               'Muss App',
//           //                               style: TextStyle(
//           //                                 color: Colors.black,
//           //                                 fontWeight: FontWeight.bold,
//           //                                 letterSpacing: 2,
//           //                                 fontSize:
//           //                                     constraints.maxHeight * 0.05,
//           //                               ),
//           //                             ),
//           //                           ),
//           //                           SizedBox(
//           //                             height: p1.maxHeight * 0.13,
//           //                             child: Text(
//           //                               ' Where Muslims Meet',
//           //                               style: TextStyle(
//           //                                 color: Colors.black,
//           //                                 fontWeight: FontWeight.bold,
//           //                                 letterSpacing: 2,
//           //                                 fontSize:
//           //                                     constraints.maxHeight * 0.018,
//           //                               ),
//           //                             ),
//           //                           ),
//           //                         ],
//           //                       );
//           //                     },
//           //                   )),
//           //             ],
//           //           )),
//           //     ),
//           //   ),
//         },
//       ),
//     );
//   }
// }
//
// // import 'package:flutter/material.dart';
// //
// // import '../const_color_scheme.dart';
// // import 'email_initial_widget.dart';
// //
// // class RegisterScreen extends StatelessWidget {
// //   RegisterScreen({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return LayoutBuilder(
// //       builder: (context, constraints) {
// //         return Stack(
// //           children: [
// //             // Image(
// //             //   height: constraints.maxHeight,
// //             //   width: constraints.maxWidth,
// //             //   image: AssetImage('assets/appimage.png'),
// //             //   fit: BoxFit.fill,
// //             // ),
// //             // Positioned(
// //             //   child: SizedBox(
// //             //     height: constraints.maxHeight,
// //             //     width: constraints.maxWidth,
// //             //     child: Container(
// //             //       height: constraints.maxHeight * 0.1,
// //             //       width: constraints.maxWidth,
// //             //       decoration: BoxDecoration(
// //             //           // borderRadius:
// //             //           //     BorderRadius.circular(constraints.maxWidth * 0.9),
// //             //           gradient: LinearGradient(
// //             //               begin: Alignment.centerLeft,
// //             //               end: Alignment.centerRight,
// //             //               colors: [
// //             //             Colors.black54,
// //             //             Colors.white12,
// //             //             Colors.black12
// //             //           ])),
// //             //     ),
// //             //   ),
// //             // ),
// //             Padding(
// //               padding: EdgeInsets.only(top: constraints.maxHeight * 0.04),
// //               child: Align(
// //                 alignment: Alignment.topCenter,
// //                 child: SizedBox(
// //                   height: constraints.maxHeight * 0.1,
// //                   child: Text(
// //                     'Muss App',
// //                     style: TextStyle(
// //                       color: Colors.black,
// //                       fontWeight: FontWeight.bold,
// //                       letterSpacing: 2,
// //                       fontSize: constraints.maxHeight * 0.05,
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             Padding(
// //               padding: EdgeInsets.only(top: constraints.maxHeight * 0.1),
// //               child: Align(
// //                 alignment: Alignment.topCenter,
// //                 child: SizedBox(
// //                   height: constraints.maxHeight * 0.1,
// //                   child: Text(
// //                     ' Where Muslims Meet',
// //                     style: TextStyle(
// //                       color: Colors.black,
// //                       fontWeight: FontWeight.bold,
// //                       letterSpacing: 2,
// //                       fontSize: constraints.maxHeight * 0.018,
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             Positioned(
// //               bottom: constraints.maxHeight * 0.15,
// //               left: constraints.maxWidth * 0.13,
// //               child: Container(
// //                 child: Row(
// //                   children: [
// //                     SizedBox(
// //                       width: constraints.maxWidth * 0.05,
// //                     ),
// //                     Image(
// //                       width: constraints.maxWidth * 0.03,
// //                       image: AssetImage(
// //                         'assets/fb.png',
// //                       ),
// //                       color: Colors.white,
// //                     ),
// //                     SizedBox(
// //                       width: constraints.maxWidth * 0.04,
// //                     ),
// //                     SizedBox(
// //                       width: constraints.maxWidth * 0.5,
// //                       child: Center(
// //                           child: Text(
// //                         'Continue with Facebook',
// //                         style: TextStyle(
// //                           color: Colors.white,
// //                           fontWeight: FontWeight.bold,
// //                           letterSpacing: 2,
// //                           fontSize: constraints.maxHeight * 0.03,
// //                         ),
// //                       )),
// //                     ),
// //                   ],
// //                 ),
// //                 height: constraints.maxHeight * 0.05,
// //                 width: constraints.maxWidth * 0.7,
// //                 decoration: BoxDecoration(
// //                   color: AppColor.darkColorUseBackground,
// //                   borderRadius:
// //                       BorderRadius.circular(constraints.maxWidth * 0.1),
// //                 ),
// //               ),
// //             ),
// //             Positioned(
// //               bottom: constraints.maxHeight * 0.25,
// //               left: constraints.maxWidth * 0.13,
// //               child: Container(
// //                 child: Row(
// //                   children: [
// //                     SizedBox(
// //                       width: constraints.maxWidth * 0.05,
// //                     ),
// //                     Image(
// //                       width: constraints.maxWidth * 0.03,
// //                       image: AssetImage(
// //                         'assets/googleimage.png',
// //                       ),
// //                       color: Colors.white,
// //                     ),
// //                     SizedBox(
// //                       width: constraints.maxWidth * 0.02,
// //                     ),
// //                     SizedBox(
// //                       width: constraints.maxWidth * 0.5,
// //                       child: Center(
// //                           child: Text(
// //                         'Continue with Google',
// //                         style: TextStyle(
// //                             color: Colors.white,
// //                             fontWeight: FontWeight.bold,
// //                             letterSpacing: 2,
// //                             fontSize: constraints.maxHeight * 0.03),
// //                       )),
// //                     ),
// //                   ],
// //                 ),
// //                 height: constraints.maxHeight * 0.05,
// //                 width: constraints.maxWidth * 0.7,
// //                 decoration: BoxDecoration(
// //                   color: AppColor.darkColorUseBackground,
// //                   borderRadius:
// //                       BorderRadius.circular(constraints.maxWidth * 0.1),
// //                 ),
// //               ),
// //             ),
// //             Padding(
// //               padding: EdgeInsets.only(right: constraints.maxWidth * 0.07),
// //               child: Align(
// //                 alignment: Alignment.bottomCenter,
// //                 child: GestureDetector(
// //                   onTap: () {
// //                     Navigator.push(context, MaterialPageRoute(
// //                       builder: (context) {
// //                         return EmailInitialUI();
// //                       },
// //                     ));
// //                   },
// //                   child: SizedBox(
// //                     height: constraints.maxHeight * 0.1,
// //                     child: Text(
// //                       'Continue with email',
// //                       style: TextStyle(
// //                         color: Colors.black,
// //                         fontWeight: FontWeight.bold,
// //                         letterSpacing: 2,
// //                         fontSize: constraints.maxHeight * 0.03,
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         );
// //       },
// //     );
// //   }
// // }
