import 'package:keysitech/home.dart';
import 'package:keysitech/pages/dashboard.dart';
import 'package:keysitech/pages/menu.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  initialRoute: 'profile',
  routes: {
    '/' :(context) => Dashboard(),
    '/menu' : (context) => Menu(),
    '/profile' : (context) => Home(),
  },
));