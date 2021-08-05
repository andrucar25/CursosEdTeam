import 'package:cursos/screens/detail_course/detail_course.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'package:cursos/constants.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:cursos/utils/utils.dart';

List _data = [
  {
    'id': 1,
    'title': 'Introducción a API REST (gratis)',
    'image':
        'https://edteam-media.s3.amazonaws.com/courses/big/fbda9747-85b7-482e-8ffc-547b98031ca4.png',
    'description':
        'Aprende todos los conceptos teóricos que hay en la arquitectura REST.',
    'author': 'Alexys Lozada',
    'score': '4.8',
    'imageAuthor':
        'https://edteam-media.s3.amazonaws.com/users/avatar/342d0c2d-149c-43f0-9031-8725cbc2ec2d.png',
    'price': '0',
    'group': 'Curso gratis',
  },
  {
    'id': 2,
    'title': 'Spring desde cero',
    'image':
        'https://edteam-media.s3.amazonaws.com/courses/big/6cbc514c-1e04-4bf4-8beb-fa595f363d9d.png',
    'description':
        'Domina los conceptos y funcionalidades básicas del framework más usado en Java y desarrolla servicios web de manera rápida y eficaz.',
    'author': 'Lucas Moyano',
    'score': '4.5',
    'imageAuthor':
        'https://lh3.googleusercontent.com/a-/AOh14GgKgF5grt9w-ZkzeW4T4gpO_9Wf7rB9xRTLwxRTqcI=s96-c',
    'price': '44',
    'group': 'Curso',
  },
  {
    'id': 3,
    'title': 'Unity desde cero',
    'image':
        'https://edteam-media.s3.amazonaws.com/courses/big/35d81cae-b9b2-4fbd-9329-8bd20e09ef9f.png',
    'description':
        'Domina la mejor herramienta de desarrollo de videojuegos en tiempo real y crea tu primer videojuego multiplataforma.',
    'author': 'Darwin Palma',
    'score': '4.7',
    'imageAuthor':
        'https://edteam-media.s3.amazonaws.com/users/avatar/fcbe1ab0-ad1c-498f-b47a-b2a855658169.jpg',
    'price': '58',
    'group': 'Curso',
  },
];

class Course extends StatefulWidget {
  //static String routeName = "/course_list";
  Course({Key key}) : super(key: key);

  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
      heroTag: null,
      onPressed: () {
      },
      backgroundColor: kPrimaryColor,
      child: Icon(Icons.pan_tool),
    ),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Text('DESARROLLO DE',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: kTextColor,
                    letterSpacing: 8.0,
                    fontSize: getProportionateScreenHeight(18.0),
                    fontWeight: FontWeight.w300)),
            Text(
              'SOFTWARE',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: kPrimaryColor,
                  letterSpacing: 8.0,
                  fontSize: getProportionateScreenHeight(18.0),
                  fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
      body: GroupedListView<dynamic, String>(
        elements: _data,
        groupBy: (item) => item['group'],
        groupSeparatorBuilder: (groupValue) => Padding(
          padding: EdgeInsets.only(top:getProportionateScreenHeight(25), bottom:getProportionateScreenHeight(8), left:getProportionateScreenWidth(8), right: getProportionateScreenWidth(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: getProportionateScreenWidth(8),
                          right: getProportionateScreenWidth(8)),
                      child: Text(
                        groupValue,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: getProportionateScreenHeight(25),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: kPrimaryColor),
                    ),
                    Expanded(
                      child: Divider(color: kPrimaryColor),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        itemBuilder: (context, item) {
          return Card(
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            elevation: 8.0,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: Container(
              //padding: EdgeInsets.all(8),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, DetailCourseScreen.routeName);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Ink.image(
                      height: getProportionateScreenHeight(220),
                      image: NetworkImage(item['image']),
                      fit: BoxFit.fitWidth,
                    ),
                    /*Image(image: NetworkImage(item['image']), height: getProportionateScreenHeight(200),
                  fit: BoxFit.fitWidth,),*/
                    Padding(
                      padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(16),
                        top: getProportionateScreenHeight(16),
                        right: getProportionateScreenWidth(16),
                        bottom: getProportionateScreenHeight(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            item['title'],
                            style: TextStyle(
                              color: kTxtColor, //Colors.grey[700],
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(15.0),
                          ),
                          Text(
                            item['description'],
                            style: TextStyle(
                              color: kTxtColor, //Colors.grey[700],
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(15.0),
                          ),
                          Row(
                            children: [
                              Text(
                                "Calificación:",
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: getProportionateScreenWidth(8)),
                              Image(
                                image: AssetImage('assets/images/star.png'),
                                height: getProportionateScreenHeight(16),
                                width: getProportionateScreenWidth(16),
                              ),
                              Text(
                                item['score'],
                                style: TextStyle(
                                  color: kScore,
                                  fontWeight: FontWeight.bold,
                                  fontSize: getProportionateScreenHeight(20),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(15.0),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: kTxtFondo,
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  maxRadius: 20.0,
                                  backgroundImage:
                                      NetworkImage(item['imageAuthor']),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(10.0),
                                ),
                                Text(
                                  item['author'],
                                  style: TextStyle(
                                    color: kTxtColor, //Colors.grey[700],
                                  ),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(90.0),
                                ),
                                Icon(Icons.shopping_cart, color: kPrimaryColor),
                                Text(
                                  "S/ ${item['price']} soles",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kPrimaryColor, //Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        groupComparator: (group1, group2) => group1.compareTo(group2),
        itemComparator: (item1, item2) =>
            item1['title'].compareTo(item2['title']),
        useStickyGroupSeparators: true,
        floatingHeader: false,
        order: GroupedListOrder.ASC,
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
