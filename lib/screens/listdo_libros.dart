import 'package:flutter/material.dart';

class ListadoLibros extends StatelessWidget {
  const ListadoLibros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listado de Libros')),
      body: Center(
        child: Text('Página de Listado de Libros'),
      ),
    );
  }
}