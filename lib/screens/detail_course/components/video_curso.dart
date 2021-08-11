import 'package:cursos/helper/hexcolors.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
import '../../../constants.dart';
import '../../../components/default_button.dart';

class VideoCourse extends StatefulWidget {
  static String routeName = "/video_curso";
  VideoCourse({Key key}) : super(key: key);

  @override
  _VideoCourseState createState() => _VideoCourseState();
}

class _VideoCourseState extends State<VideoCourse> {
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
        
          Stack(
            children:[
              _crearImagen(),
            Positioned(
              top: 150,
              right: 150,
                  child:_botonPlay() 
                  
                  ),
            ] 
            ),
          Container(
            width: double.infinity,
            height: 250,
            color: HexColor('#192229'),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                           SizedBox(width: 15),
                  Text('1.1 - Bienvenida', 
                  style:TextStyle(
                    fontSize: 28.0, 
                    fontWeight: FontWeight.bold,
                    color:Colors.white
                        )
                      ),
                    ],
                  ),
            
                  Row(children: [
                     SizedBox(width: 15, height: 40),
                     Icon(Icons.visibility_outlined, color:  HexColor('#a0a7ac'),),
                     SizedBox(width: 10),
                     Text('858 vistas', 
                        style:TextStyle(
                          fontSize: 18.0, 
                          fontWeight: FontWeight.bold,
                          color:Colors.grey
                              )
                            ),
                      SizedBox(width: 15),
                        Text('Introduccion a las API Rest', 
                        style:TextStyle(
                          fontSize: 18.0, 
                          fontWeight: FontWeight.bold,
                          color:Colors.blue
                              )
                            ),
                    ],
                  ),

                  SizedBox(height:30),
                  Row(children: [
                    SizedBox(width:15),
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: NetworkImage('https://edteam-media.s3.amazonaws.com/users/avatar/342d0c2d-149c-43f0-9031-8725cbc2ec2d.png'),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(width: 15),
                      Text('Prof. Alexys Lozada', 
                        style:TextStyle(
                          fontSize: 14.0, 
                          fontWeight: FontWeight.bold,
                          color:Colors.white
                              )
                            ),

                  ],
                  
                  ),

                     SizedBox(height:30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints.tightFor(width: 140),
                        child: ElevatedButton.icon(
                          onPressed: (){},
                           icon:Icon(Icons.keyboard_arrow_left), 
                           label: Text('Anterior')),
                      ),
                      ConstrainedBox(
                         constraints: BoxConstraints.tightFor(width: 140),
                        child: ElevatedButton.icon(
                          onPressed: (){},
                           icon:Icon(Icons.keyboard_arrow_right), 
                           label: Text('Siguiente')),
                      ),

                    ],
                  )
                       
              ],),
            
          ),
          Container(
            width: double.infinity,
            height: 150,
            color: HexColor('#22303a'),
            child: Row(
              
              children: [
                SizedBox(width: 15),
                CircleAvatar(
                   radius: 25.0,
                    backgroundImage: NetworkImage('https://edteam-media.s3.amazonaws.com/users/avatar/f936a14a-a7ad-4dcb-a562-5780107206cb.png'),
                    backgroundColor: Colors.transparent,
                ),
                SizedBox(width: 20),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                     color: HexColor('#697477'),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      '¿Jose, Quieres publicar algo?', 
                          style:TextStyle(
                            fontSize: 14.0, 
                            fontWeight: FontWeight.bold,
                            color:Colors.white
                                )
                              ),
                  ),
                )
              ],
            ),
          )

        ],
      ),
    ));
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      height: 400,
      color: Colors.black,
      );
    
  }

  Widget _botonPlay(){
    return CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage('https://uploads-ssl.webflow.com/5ba5f8705ced0c5f42e4a83c/5dcd248130b4b1585d9a1208_play-button-1.png'),
                backgroundColor: Colors.transparent,
              );
  }

}