import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloText = new TextStyle(fontSize: 27);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Number of Clicks > ', style: estiloText),
          Text('0', style: estiloText),
        ],
      )),
    );
  }
}
