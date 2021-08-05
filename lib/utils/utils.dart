import 'dart:math';
import 'package:cursos/constants.dart';
import 'package:flutter/material.dart';

double roundDouble(double value, int places) {
  double mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

void showModalMessage(
    BuildContext context, String message, IconData icon, String title) {
  showModalBottomSheet<void>(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    builder: (BuildContext context) {
      return Container(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(icon, size: 40.0),
                Text(
                  title,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  message,
                  textAlign: TextAlign.center,
                ),
                ButtonTheme(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black, // background
                      onPrimary: Colors.grey, // foreground
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('Regresar'),
                      ],
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}

int getMonthNumber(String name) {
  switch (name) {
    case 'Enero':
      return 1;
      break;
    case 'Febrero':
      return 2;
      break;
    case 'Marzo':
      return 3;
      break;
    case 'Abril':
      return 4;
      break;
    case 'Mayo':
      return 5;
      break;
    case 'Junio':
      return 6;
      break;
    case 'Julio':
      return 7;
      break;
    case 'Agosto':
      return 8;
      break;
    case 'Septiembre':
      return 9;
      break;
    case 'Octubre':
      return 10;
      break;
    case 'Noviembre':
      return 11;
      break;
    case 'Diciembre':
      return 12;
      break;
    default:
      return 1;
  }
}



String getEspecialidadName(int index) {
  switch (index) {
    case 1:
      return 'Reumatologia';
      break;
    case 2:
      return 'Cardiologia';
      break;
    case 3:
      return 'Fisiatria';
      break;
    case 4:
      return 'Neumologia';
      break;
    case 5:
      return 'Oftalmologia';
      break;
    case 6:
      return 'Gastroenterologia';
      break;
    default:
      return 'Sin nombre';
  }
}

String weekday(int day) {
  switch (day) {
    case 1:
      return 'Lun';
      break;
    case 2:
      return 'Ma';
      break;
    case 3:
      return 'Mie';
      break;
    case 4:
      return 'Jue';
      break;
    case 5:
      return 'Vie';
      break;
    case 6:
      return 'Sab';
      break;
    case 7:
      return 'Dom';
      break;
    default:
      return 'Domingo';
      break;
  }
}

void showAlert(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Informacion incorrecta',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700]),
          ),
        ),
        content: Container(
          height: 200.0,
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.error,
              size: 70.0,
              color: kPrimaryColor,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              message,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250.0,
              height: 40.0,
              child: RaisedButton.icon(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                textColor: Colors.white,
                color: kPrimaryColor,
                label: Text(
                  'Aceptar',
                ),
                icon: Icon(Icons.check),
                onPressed: () => Navigator.of(context).pop(),
              ),
            )
          ]),
        ),
      );
    },
  );
}

void showAlertWithTitle(BuildContext context, String message, String title) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            title,
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700]),
          ),
        ),
        content: Container(
          height: 200.0,
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.error,
              size: 70.0,
              color: kPrimaryColor,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              message,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250.0,
              height: 40.0,
              child: RaisedButton.icon(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                textColor: Colors.white,
                color: kPrimaryColor,
                label: Text(
                  'Aceptar',
                ),
                icon: Icon(Icons.check),
                onPressed: () => Navigator.of(context).pop(),
              ),
            )
          ]),
        ),
      );
    },
  );
}

class Dialogs {
  static Future<void> showLoadingDialog(
      BuildContext context, GlobalKey key, String message) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new WillPopScope(
              onWillPop: () async => false,
              child: SimpleDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  key: key,
                  backgroundColor: Colors.white,
                  contentPadding: EdgeInsets.all(20.0),
                  children: <Widget>[
                    Center(
                      child: Column(children: [
                        CircularProgressIndicator(
                          valueColor:
                              new AlwaysStoppedAnimation<Color>(kPrimaryColor),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          message,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.grey[600]),
                        )
                      ]),
                    )
                  ]));
        });
  }
}

void showAlertCulqiTarjeta(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Error de validación',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700]),
          ),
        ),
        content: Container(
          height: 300.0,
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.error,
              size: 70.0,
              color: kPrimaryColor,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              message,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 250.0,
              height: 40.0,
              child: RaisedButton.icon(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                textColor: Colors.white,
                color: kPrimaryColor,
                label: Text(
                  'Aceptar',
                ),
                icon: Icon(Icons.check),
                onPressed: () => Navigator.of(context).pop(),
              ),
            )
          ]),
        ),
      );
    },
  );
}

void showAlertPago(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Error en la transacción',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700]),
          ),
        ),
        content: Container(
          height: 200.0,
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.error,
              size: 70.0,
              color: kPrimaryColor,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              message,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250.0,
              height: 40.0,
              child: RaisedButton.icon(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                textColor: Colors.white,
                color: kPrimaryColor,
                label: Text(
                  'Aceptar',
                ),
                icon: Icon(Icons.check),
                onPressed: () => Navigator.of(context).pop(),
              ),
            )
          ]),
        ),
      );
    },
  );
}

void showAlertTeleconsultaPendiente(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'No hay teleconsulta aún!',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700]),
          ),
        ),
        content: Container(
          height: 200.0,
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.error,
              size: 70.0,
              color: kPrimaryColor,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              message,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250.0,
              height: 40.0,
              child: RaisedButton.icon(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                textColor: Colors.white,
                color: kPrimaryColor,
                label: Text(
                  'Aceptar',
                ),
                icon: Icon(Icons.check),
                onPressed: () => Navigator.of(context).pop(),
              ),
            )
          ]),
        ),
      );
    },
  );
}

void showAlertLaboratorio(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'No hay resultados aún!',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700]),
          ),
        ),
        content: Container(
          height: 200.0,
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.error,
              size: 70.0,
              color: kPrimaryColor,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              message,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250.0,
              height: 40.0,
              child: RaisedButton.icon(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                textColor: Colors.white,
                color: kPrimaryColor,
                label: Text(
                  'Aceptar',
                ),
                icon: Icon(Icons.check),
                onPressed: () => Navigator.of(context).pop(),
              ),
            )
          ]),
        ),
      );
    },
  );
}
