import 'package:keysitech/home.dart';
import 'package:keysitech/pages/dashboard.dart';
import 'package:keysitech/pages/menu.dart';
import 'package:keysitech/pages/signup.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/signup',
  routes: {
    '/' :(context) => Dashboard(),
    '/menu' : (context) => Menu(),
    '/profile' : (context) => Home(),
    '/signup' : (context) => Signup(),
  },
));