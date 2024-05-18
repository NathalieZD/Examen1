import 'package:flutter/material.dart';
import 'package:flutter_examen/models/villanos.dart';

class DetallesVillanoWidget extends StatelessWidget {
  final Villano villano;

  DetallesVillanoWidget({required this.villano});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Villano'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
            'Nombre: ${villano.name}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'URL: ${villano.url}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}