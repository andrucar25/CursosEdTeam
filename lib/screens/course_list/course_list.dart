import 'package:flutter/material.dart';
import 'components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../size_config.dart';
import '../../constants.dart';

class CourseListScreen extends StatelessWidget {
  static String routeName = "/course_list";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ), 
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
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: kPrimaryColor,
                ),
                onPressed: () {}
                ),
          ]),
      body: Course(),
    );
  }
}
