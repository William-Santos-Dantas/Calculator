import 'package:calculadora/pages/calculator/calculator.dart';
import 'package:flutter/material.dart';

// Pages

class Routes {
  static final routes = <String, WidgetBuilder>{
    '/': (context) => Calculator(),
  };
}