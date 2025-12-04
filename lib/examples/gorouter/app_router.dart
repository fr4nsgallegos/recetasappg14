// vamos a declarar TODAS nuestas rutas

import 'package:go_router/go_router.dart';
import 'package:recetasappg14/examples/gorouter/navigator_withAppRouter_page.dart';
import 'package:recetasappg14/examples/scroll_page.dart';
import 'package:recetasappg14/examples/textformfield_page.dart';
import 'package:recetasappg14/pages/home_page.dart';

final GoRouter approuter = GoRouter(
  initialLocation: '/navigatorGoRouter',
  routes: [
    GoRoute(path: '/home', builder: (context, state) => HomePage()),
    GoRoute(
      path: '/textFormField',
      builder: (context, state) => TextformfieldPage(),
    ),
    GoRoute(path: '/scrollPage', builder: (context, state) => ScrollPage()),
    GoRoute(
      path: '/navigatorGoRouter',
      builder: (context, state) => NavigatorWithapprouterPage(),
    ),
  ],
);
