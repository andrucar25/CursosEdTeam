import 'package:cursos/screens/account/account_screen.dart';
import 'package:cursos/screens/course_list/course_list.dart';
import 'package:cursos/screens/detail_course/components/video_curso.dart';
import 'package:cursos/screens/detail_course/detail_course.dart';
import 'package:cursos/screens/sign_in/sign_in_screen.dart';
import 'package:cursos/screens/sign_up/sign_up_screen.dart';
import 'package:cursos/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

final String loggedInitialRoute = SignInScreen.routeName;

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
    SplashScreen.routeName: (context) => SplashScreen(),
    CourseListScreen.routeName: (context) => CourseListScreen(),
    SignInScreen.routeName: (context) => SignInScreen(),
    DetailCourseScreen.routeName: (context) => DetailCourseScreen(),
    SignUpScreen.routeName:(context) => SignUpScreen(),
    AcountScreen.routeName:(context) => AcountScreen(),
    VideoCourse.routeName:(context) => VideoCourse()
    

};
