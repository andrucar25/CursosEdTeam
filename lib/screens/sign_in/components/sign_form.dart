import 'package:cursos/screens/course_list/course_list.dart';
import 'package:flutter/material.dart';
import 'package:cursos/utils/utils.dart';
import 'package:cursos/components/custom_surfix_icon.dart';
import 'package:cursos/components/form_error.dart';
import 'package:cursos/helper/keyboard.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();

  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(25.0),
              ),
              Text(
                "Usa una de tus redes",
                style: TextStyle(
                  color: kTxtColor, //Colors.grey[700],
                  fontSize: getProportionateScreenWidth(16),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(17.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              socialMedia('assets/icons/google-icon.svg'),
              socialMedia('assets/icons/twitter.svg'),
              socialMedia('assets/icons/github.svg'),
            ],
          ),
          SizedBox(
            height: getProportionateScreenWidth(17.0),
          ),
          Row(
            children: [
              SizedBox(
                height: getProportionateScreenWidth(25.0),
              ),
              Text(
                "O usa tu correo electrónico",
                style: TextStyle(
                  color: kTxtColor,
                  fontSize: getProportionateScreenWidth(16),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenWidth(17.0),
          ),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(5)),
          DefaultButton(
            text: "Iniciar sesión",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                KeyboardUtil.hideKeyboard(context);
                _login(email, password, context);
              }
            },
          ),
        ],
      ),
    );
  }

  Ink socialMedia(String icono) {
    return Ink(
      width: getProportionateScreenWidth(95),
      padding: EdgeInsets.only(right: getProportionateScreenWidth(10)),
      decoration: new BoxDecoration(
          color: kTxtFondo,
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(10)),
          shape: BoxShape.rectangle,
          border: new Border.all(
            color: Colors.black,
            width: 1.0,
          )),
      child: IconButton(
        icon: SvgPicture.asset(icono),
        iconSize: 40.0,
        padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
        onPressed: () {},
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 6) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 6) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Contraseña",
        hintText: "Escribe tu contraseña",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Correo electrónico",
        hintText: "Escribe tu correo electrónico",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  Future<void> _login(String email, String pass, BuildContext context) async {
    //Dialogs.showLoadingDialog(context, _keyLoader, 'Validando Datos');
    await Navigator.pushNamed(context, CourseListScreen.routeName);
  }
}
