import 'package:flutter/material.dart';
import 'package:proyectouno/src/providers/menu_provider.dart';
import 'package:proyectouno/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // print(menuProvider.opciones);
    return FutureBuilder(
      // el future que estoy esperando
      future: menuProvider.cargarData(),
      initialData: [], //este argumento es
      // el builder rec
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        // se dispara de 3 maneras (cuando pido la data, cuando la resivo y cuando hubo un error)
        if (snapshot.hasData) {
          return ListView(children: _listaItems(snapshot.data!, context));
        }
        {
          return CircularProgressIndicator();
        }
      },
    );
    // return ListView(
    //   children: _listaItems(),
    // );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_rounded),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);
        },
      );
      opciones.add(widgetTemp);
      opciones.add(Divider());
    });
    return opciones;
  }
}
