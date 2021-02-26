import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  final _estiloText = new TextStyle(fontSize: 27);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Number of Clicks > ', style: _estiloText),
            Text('$_conteo', style: _estiloText),
          ],
        )),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        SizedBox(width: 31),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _remove),
        SizedBox(width: 31),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add),
      ],
    );
  }

  void _add() {
    setState(() => _conteo++);
  }

  void _remove() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
