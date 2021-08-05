import 'package:flutter/material.dart';
import '../size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class AppBarEd extends StatefulWidget {
  AppBarEd({Key key}) : super(key: key);

  @override
  _AppBarEdState createState() => _AppBarEdState();
}

class _AppBarEdState extends State<AppBarEd> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          elevation: 5.0,
          title:  SvgPicture.network(
                   "https://ed.team/static/images/logo/logo.svg",
                     fit: BoxFit.contain,
                    height: getProportionateScreenHeight(35),
                  ),
          /*Image.asset(
            "assets/images/logoclinicalaluz.png",
            fit: BoxFit.contain,
            height: getProportionateScreenHeight(35),
          ),*/
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: kPrimaryColor,
                ),
                onPressed: () {}
                ),
          ]);
  }
}