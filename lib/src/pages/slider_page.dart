import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100;
  bool _bloquearcheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckBox(),
            _crearSwich(),
            Expanded(child: _crearImage()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: "tamano de la imagen",
      // divisions: 20,
      value: _valorSlider,
      min: 10,
      max: 400,
      onChanged: (_bloquearcheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearImage() {
    return Image(
      image: NetworkImage(
          'https://w7.pngwing.com/pngs/559/909/png-transparent-among-us-crewmate-imposter-smash-astronaut-game-cartoon-character-crewmates-space.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    // return Checkbox(
    //     value: _bloquearcheck,
    //     onChanged: (valor) {
    //       setState(() {
    //         _bloquearcheck = valor!;
    //       });
    //     });
    return CheckboxListTile(
        title: Text('Bloquear el Slider'),
        value: _bloquearcheck,
        onChanged: (valor) {
          setState(() {
            _bloquearcheck = valor!;
          });
        });
  }

  Widget _crearSwich() {
    return SwitchListTile(
        title: Text('Bloquear el Slider'),
        value: _bloquearcheck,
        onChanged: (valor) {
          setState(() {
            _bloquearcheck = valor;
          });
        });
  }
}
