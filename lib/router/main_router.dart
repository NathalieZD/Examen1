import 'package:flutter_examen/screens/listdo_libros.dart';
import 'package:flutter_examen/screens/detalles_libros.dart';
import 'package:go_router/go_router.dart';

final GoRouter mainRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(path: '/',
      builder: (context, state) => const ListadoLibros()
    ),
    GoRoute(path: '/about',
      builder: (context, state) => const DetallesLibros()
    ),
   
  ],
);