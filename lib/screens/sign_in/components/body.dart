import 'package:cursos/constants.dart';
import 'package:flutter/material.dart';
import 'package:cursos/components/no_account_text.dart';
import '../../../size_config.dart';
import 'sign_form.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                 SvgPicture.network(
                   "https://ed.team/static/images/logo/logo.svg",
                     fit: BoxFit.contain,
                    height: getProportionateScreenHeight(80),
                  ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                NoAccountText(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
