import 'package:dating_app/const_color_scheme.dart';
import 'package:dating_app/widgets/your_sect_initial_widget.dart';
import 'package:flutter/material.dart';

class YourSectUI extends StatelessWidget {
  const YourSectUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.AppColorBackground,
        body: YourSectInitialWidget(),
      ),
    );
  }
}
