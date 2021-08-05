import 'package:cursos/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';



import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "¿No tienes una cuenta? ",
              style: TextStyle(fontSize: getProportionateScreenWidth(16), ),
            ),
                
         SizedBox(height: getProportionateScreenWidth(16)),
                _textColored( "Regístrate gratis", context),


              
              //_textColored("Regístrate gratis")
            
          ],
        ),

         SizedBox(height: getProportionateScreenWidth(16)),
                _textColored( "¿Olvidaste tu contraseña?", context),
      ],
    );
  }
}

Widget _textColored(String texto, BuildContext context){
  return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SignUpScreen.routeName);
      },
          child: Text(
            texto,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
  );

}
