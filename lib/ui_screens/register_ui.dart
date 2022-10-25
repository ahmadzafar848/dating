import 'package:dating_app/widgets/register_initial_widget.dart';
import 'package:flutter/material.dart';

class RegisterUI extends StatelessWidget {
  const RegisterUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        
        body: RegisterInitialWidget(),),
    );
  }
}
