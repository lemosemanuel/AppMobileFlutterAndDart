import 'package:flutter/material.dart';
import 'package:proyectouno/src/pages/aler_page.dart';
import 'package:proyectouno/src/pages/animate_container.dart';
import 'package:proyectouno/src/pages/avatar_page.dart';
import 'package:proyectouno/src/pages/card_page.dart';
import 'package:proyectouno/src/pages/home_page.dart';
import 'package:proyectouno/src/pages/input_page.dart';
import 'package:proyectouno/src/pages/listview_page.dart';
import 'package:proyectouno/src/pages/slider_page.dart';

Map<String, WidgetBuilder> generalApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPAge(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimateContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListaPage(),
  };
}
