import 'package:flutter/material.dart';
import 'package:cursos/size_config.dart';

import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      //appBar: AppBar(),
      body: Sign_Up(),
    );
  }
}
