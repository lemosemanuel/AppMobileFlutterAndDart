import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageTemp extends StatelessWidget {
  final List opciones = ['uno', 'dos', 'tres'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componentes'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];
    for (String i in opciones) {
      final tempWidget = ListTile(
        title: Text(i),
      );
      lista.add(tempWidget);
      lista.add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    var widgets = opciones.map((e) {
      return Column(
        children: [
          ListTile(
            title: Text(e + '!'),
            subtitle: Text('subtitulo de las cosas'),
            leading: Icon(Icons.account_balance_wallet_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
    return widgets;
  }
}
