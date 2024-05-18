import 'package:flutter/material.dart';
import 'package:flutter_examen/widget/libros_lista.dart';

class ListadoLibros extends StatelessWidget {
  const ListadoLibros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Libros')),
      body: LibrosLista(),
    );
  }
}
