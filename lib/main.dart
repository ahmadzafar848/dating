
import 'package:dating_app/ui_screens/choose_malefemale_ui.dart';
import 'package:dating_app/ui_screens/create_profile_ui.dart';
import 'package:dating_app/ui_screens/register_ui.dart';
import 'package:dating_app/ui_screens/seeprofile_ui.dart';
import 'package:dating_app/ui_screens/upload_photo_ui.dart';
import 'package:dating_app/ui_screens/verifyphone_ui.dart';
import 'package:dating_app/ui_screens/verifyyournumber_ui.dart';
import 'package:dating_app/ui_screens/your_sect_ui.dart';
import 'package:dating_app/ui_screens/yourphone_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home:  RegisterUI(),

    );
  }
}
