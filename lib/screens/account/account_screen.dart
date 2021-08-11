import 'package:flutter/material.dart';
import 'package:cursos/size_config.dart';

import 'components/body.dart';

class AcountScreen extends StatelessWidget {
  static String routeName = "/acount_screen";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      //appBar: AppBar(),
      body: Acount(),
    );
  }
}
