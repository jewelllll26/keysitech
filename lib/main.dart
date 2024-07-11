import 'package:mobile_appfront/home.dart';
import 'package:mobile_appfront/pages/dashboard.dart';
import 'package:mobile_appfront/pages/menu.dart';
import 'package:mobile_appfront/pages/signup.dart';
import 'package:mobile_appfront/pages/login.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/menu',
  routes: {
    '/' :(context) => Dashboard(),
    '/menu' : (context) => Menu(),
    '/profile' : (context) => Home(),
    '/signup' : (context) => Signup(),
    '/login' : (context) => Login(),
  },
));