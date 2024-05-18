import 'package:flutter/material.dart';

class DetallesLibros extends StatelessWidget {
  const DetallesLibros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalles de Libros')),
      body: Center(
        child: Text('Página de Listado de Libros'),
      ),
    );
  }
}