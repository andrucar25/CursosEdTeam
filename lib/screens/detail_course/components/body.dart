import 'package:flutter/material.dart';
import '../../../size_config.dart';
import '../../../constants.dart';
import '../../../components/default_button.dart';

class DetailCourse extends StatefulWidget {
  DetailCourse({Key key}) : super(key: key);

  @override
  _DetailCourseState createState() => _DetailCourseState();
}

class _DetailCourseState extends State<DetailCourse> {
  final estiloTitulo = TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);
  final estiloSubtitluo = TextStyle(fontSize: 16.0, color: kTxtColor, fontWeight: FontWeight.bold);
  final estiloInfo = TextStyle(fontSize: 16.0, color: kTxtTextSecondary);
  final estiloInfoAzul = TextStyle(fontSize: 16.0, color: kPrimaryColor);
  final estiloAzul = TextStyle(
    color: kPrimaryColor, //Colors.grey[700],
    fontSize: getProportionateScreenHeight(14),
    fontWeight: FontWeight.bold,
  );

  final estiloOscuro = TextStyle(
    color: kTxtColor, //Colors.grey[700],
    fontSize: getProportionateScreenHeight(14),
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: getProportionateScreenHeight(20.0),
          ),
          _crearImagen(),
          _especialidad(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
        ],
      ),
    ));
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://edteam-media.s3.amazonaws.com/courses/big/fbda9747-85b7-482e-8ffc-547b98031ca4.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _especialidad() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(30.0),
            vertical: getProportionateScreenHeight(20.0)),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Programación y tecnología', style: estiloAzul),
                  SizedBox(height: 7.0),
                  Text(' > Desarrollo de software', style: estiloOscuro),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(30.0),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Introducción a API REST (gratis)', style: estiloTitulo),
                  SizedBox(height: getProportionateScreenHeight(15.0)),
                  Text(
                      'Aprende todos los conceptos teóricos que hay en la arquitectura REST.',
                      style: estiloSubtitluo),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical:getProportionateScreenHeight(10.0)),
            ),
            _info(Icons.leaderboard, "Nivel: Intermedio"),
            _info(Icons.calendar_today, "Fecha de lanzamiento: 31 de agosto"),
            _infoAzul(Icons.alarm, "Duración: +55 minutos", " (Ver temario)"),
            _infoAzul(Icons.grade, "Calificación: 4.8", " (Ver opiniones)"),
          ],
        )
      ],
    );
  }

  Widget _info(IconData icon, String texto) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: getProportionateScreenWidth(30)),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon, color: kScore, size: 16),
              Container(
                margin: EdgeInsets.only(left: getProportionateScreenWidth(8)),
                child: Text(texto, style: estiloInfo),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _infoAzul(IconData icon, String texto, String textoAzul) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: getProportionateScreenWidth(30)),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon, color: kScore, size: 16),
              Container(
                margin: EdgeInsets.only(left: getProportionateScreenWidth(8)),
                child: Row(
                  children: [
                    Text(texto, style: estiloInfo),
                    Text(textoAzul, style: estiloInfoAzul),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(30.0),
          vertical:  getProportionateScreenHeight(20.0),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Comienza a estudiar ahora', style: estiloInfo),
                  SizedBox(height: getProportionateScreenHeight(15.0)),
                      DefaultButton(
            text: "Clase 1.1 - Bienvenida",
            press: () {
        
            },
          ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
