import 'package:flutter/material.dart';
import 'package:flutter_examen/router/main_router.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig:  mainRouter , 
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 229, 229, 230)),
        useMaterial3: true,
      ),
    );
  }
}

f