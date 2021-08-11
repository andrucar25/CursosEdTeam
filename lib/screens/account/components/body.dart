import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:cursos/components/no_account_text.dart';
import '../../../size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../components/default_button.dart';
import 'package:cursos/constants.dart';

class Acount extends StatefulWidget {

  @override
  _AcountState createState() => _AcountState();
}

class _AcountState extends State<Acount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Column(
          
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PERFIL',
                //textAlign: TextAlign.left,
                style: TextStyle(
                    color: kPrimaryColor,
                    letterSpacing: 8.0,
                    fontSize: getProportionateScreenHeight(18.0),
                    fontWeight: FontWeight.w900),
              ),
               Text(
                'PREMIUM',
                //textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.amber[800],
                    letterSpacing: 8.0,
                    fontSize: getProportionateScreenHeight(18.0),
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
          ] 
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenWidth(60)),
          child: Form(
              child: Column(
            children: <Widget>[
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              CircleAvatar(
                radius: 100.0,
                backgroundImage: NetworkImage('https://edteam-media.s3.amazonaws.com/users/avatar/f936a14a-a7ad-4dcb-a562-5780107206cb.png'),
                backgroundColor: Colors.transparent,
              ),
               
 
              SizedBox(
                height: 20.0,
              ),
              
    
              SizedBox(height: getProportionateScreenHeight(50)),
              nombresField(),
              SizedBox(height: getProportionateScreenHeight(30)),
              apellidosField(),
              SizedBox(height: getProportionateScreenHeight(30)),
             ciudadField(), 
              SizedBox(height: getProportionateScreenHeight(30)),
              paisField(),
              SizedBox(height: getProportionateScreenHeight(30)),
              generoField(),
              SizedBox(height: getProportionateScreenHeight(30)),
              gitField(),
              SizedBox(height: getProportionateScreenHeight(30)),
           contraseniaField(),
              SizedBox(height: getProportionateScreenHeight(30)),
              repContraseniaField(),
              SizedBox(height: getProportionateScreenHeight(30)),
              biografiaField(),
                SizedBox(height: getProportionateScreenHeight(30)),
              Container(
                alignment: Alignment.center,
                child: DefaultButton(
                  text: "Guardar cambios",
                  press: () {},
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

  TextFormField nombresField() {
    return TextFormField(
      initialValue: 'Jose',
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: "Nombre",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

    TextFormField apellidosField() {
    return TextFormField(
      initialValue: 'Pastor',
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: "Apellido",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
      TextFormField ciudadField() {
    return TextFormField(
      initialValue: 'Tacna',
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: "Ciudad",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

   TextFormField paisField() {
    return TextFormField(
      initialValue: 'Peru',
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: "Pais",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  
   TextFormField generoField() {
    return TextFormField(
      initialValue: 'Hombre',
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: "Genero",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  

  TextFormField gitField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: "gitlab.com/",
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

TextField biografiaField(){
  return TextField(
    maxLines: 7,
  decoration: InputDecoration(
    labelText: 'Biografia',
    border: OutlineInputBorder(),
    
    
  ),
);
}
