import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_examen/models/libros.dart'; 

class LibrosLista extends StatefulWidget {
  @override
  _LibrosListaState createState() => _LibrosListaState();
}

class _LibrosListaState extends State<LibrosLista> {
  List<ListarLibros> _libros = [];

  @override
  void initState() {
    super.initState();
    _cargarLibros();
  }

  Future<void> _cargarLibros() async {
    try {
    
      String jsonData = await rootBundle.loadString('ruta/del/archivo.json');
      List<dynamic> parsedJson = jsonDecode(jsonData);
      List<ListarLibros> libros = parsedJson.map((json) => ListarLibros.fromJson(json)).toList();

   
      setState(() {
        _libros = libros;
      });
    } catch (e) {
      
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('No se pudieron cargar los libros.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cerrar'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return _libros.isEmpty
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            itemCount: _libros.length,
            itemBuilder: (context, index) {
              final libro = _libros[index];
            
            },
          );
  }
}