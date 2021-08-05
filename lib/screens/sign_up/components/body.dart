import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:cursos/components/no_account_text.dart';
import '../../../size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../components/default_button.dart';

class Sign_Up extends StatefulWidget {

  @override
  _Sign_UpState createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(60)),
        child: Form(
            child: Column(
          children: <Widget>[
            SizedBox(height: SizeConfig.screenHeight * 0.02),
             SvgPicture.network(
                   "https://ed.team/static/images/logo/logo.svg",
                     fit: BoxFit.contain,
                    height: getProportionateScreenHeight(70),
                  ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "¡Registrate!",
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: getProportionateScreenWidth(28),
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: getProportionateScreenHeight(50)),
            nombresField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            apellidosField(),
            SizedBox(height: getProportionateScreenHeight(30)),
          correoField(), 
            SizedBox(height: getProportionateScreenHeight(30)),
         contraseniaField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            repContraseniaField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Container(
              alignment: Alignment.center,
              child: DefaultButton(
                text: "Registrar ahora",
                press: () {},
              ),
            ),
          ],
        )),
      ),
    );
  }
}

  TextFormField nombresField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: "Nombres",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

    TextFormField apellidosField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: "Apellidos",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
      TextFormField correoField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Correo electronico",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

        TextFormField contraseniaField() {
    return TextFormField(
          autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration:InputDecoration(
                labelText: 'Contraseña',
                prefixIcon: Icon(Icons.lock_outline)
              ),
    );
  }

        TextFormField repContraseniaField() {
    return TextFormField(
          autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration:InputDecoration(
                labelText: 'Repetir contraseña',
                prefixIcon: Icon(Icons.lock_outline)
              ),
    );
  }
