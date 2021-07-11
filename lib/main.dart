import 'package:flutter/material.dart';
import 'package:proyectouno/src/pages/aler_page.dart';
import 'package:proyectouno/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:proyectouno/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'ES'),
      ],

      title: 'Material App',
      // home: HomePage(),
      initialRoute: '/',
      routes: generalApplicationRoutes(),
      onGenerateRoute: (settings) {
        print('Ruta llamada ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
