import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  _cardTipo1() {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Hola que tal'),
            subtitle: Text('esta es la descripcion de la tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('Aceptar')),
            ],
          )
        ],
      ),
    );
  }

  _cardTipo2() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/17.1 jar-loading.gif'),
            image: NetworkImage(
                'https://media-exp3.licdn.com/dms/image/C4D1BAQFsdjpzrtQWUA/company-background_10000/0/1519796755846?e=2159024400&v=beta&t=tL2HSXGgliQAAqXK0ZvfDvXvdRD2j3Gpk_juoBRmYlM'),
            fadeInDuration: Duration(milliseconds: 2000),
            height: 300,
            fit: BoxFit.cover,
          ),
          // Image(
          // image: NetworkImage(
          // 'https://media-exp3.licdn.com/dms/image/C4D1BAQFsdjpzrtQWUA/company-background_10000/0/1519796755846?e=2159024400&v=beta&t=tL2HSXGgliQAAqXK0ZvfDvXvdRD2j3Gpk_juoBRmYlM')),
          Container(
            child: Text("no se que poner"),
            padding: EdgeInsets.all(10),
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(2, 11))
          ]),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
