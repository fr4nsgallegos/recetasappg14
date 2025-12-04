// vamos a declarar TODAS nuestas rutas

import 'package:go_router/go_router.dart';
import 'package:recetasappg14/examples/dropdown_page.dart';
import 'package:recetasappg14/examples/gorouter/login_page.dart';
import 'package:recetasappg14/examples/gorouter/navigator_withAppRouter_page.dart';
import 'package:recetasappg14/examples/gorouter/product_page.dart';
import 'package:recetasappg14/examples/scroll_page.dart';
import 'package:recetasappg14/examples/textformfield_page.dart';
import 'package:recetasappg14/models/receta_model.dart';
import 'package:recetasappg14/pages/home_page.dart';
import 'package:recetasappg14/pages/receta_page.dart';

final GoRouter approuter = GoRouter(
  initialLocation: '/navigatorGoRouter',
  redirect: (context, state) {
    final isLogeed = false;
    if (!isLogeed && state.matchedLocation != '/login') {
      return '/login';
    }
    return null;
  },
  routes: [
    GoRoute(path: '/login', builder: (context, state) => LoginPage()),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomePage(),
      routes: [
        GoRoute(
          path: '/dropdownPage',
          builder: (context, state) => DropdownPage(),
        ),
      ],
    ),
    GoRoute(
      path: '/textFormField',
      builder: (context, state) => TextformfieldPage(),
    ),
    GoRoute(path: '/scrollPage', builder: (context, state) => ScrollPage()),
    GoRoute(
      path: '/navigatorGoRouter',
      builder: (context, state) => NavigatorWithapprouterPage(),
    ),
    // pasamos un parámetro String
    GoRoute(
      path: '/producto/:id',
      builder: (context, state) {
        final id = state.pathParameters["id"];
        return ProductPage(id: id!);
      },
    ),
    // Pasar un parámetro de tipo modelo
    GoRoute(
      path: '/recetaPage',
      builder: (context, state) {
        final receta = state.extra as RecetaModel;
        return RecetaPage(receta: receta);
      },
    ),
  ],
);
