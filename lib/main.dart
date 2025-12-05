import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recetasappg14/examples/dropdown_page.dart';
import 'package:recetasappg14/examples/gorouter/app_router.dart';
import 'package:recetasappg14/examples/listview_page.dart';
import 'package:recetasappg14/examples/navigator_page.dart';
import 'package:recetasappg14/examples/scroll_page.dart';
import 'package:recetasappg14/examples/sliver/sliver_page.dart';
import 'package:recetasappg14/examples/textfield_page.dart';
import 'package:recetasappg14/examples/textformfield_page.dart';
import 'package:recetasappg14/pages/home_page.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(
//     MaterialApp(
//       // TRABAJANDO FUENTE GLOBAL CON GOOGLEFONTS
//       theme: ThemeData(
//         textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
//       ),

//       // TRABAJANDO FUENTE GLOBAL CON ASSET LOCAL
//       // theme: ThemeData(
//       //   fontFamily: "FuenteInstitucional",
//       //   textTheme: TextTheme(
//       //     headlineLarge: TextStyle(fontSize: 32),
//       //     bodyMedium: TextStyle(fontSize: 16),
//       //   ),
//       // ),
//       home: HomePage(),
//       debugShowCheckedModeBanner: false,
//     ),
//   );
// }

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // runApp(MyApp());
  runApp(NavigatorRoutesPage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TRABAJANDO FUENTE GLOBAL CON GOOGLEFONTS
      // theme: ThemeData(
      //   textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
      // ),
      theme: ThemeData(
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.oswald(color: Colors.cyan, fontSize: 35),
          bodyMedium: GoogleFonts.roboto(),
        ),
      ),

      // TRABAJANDO FUENTE GLOBAL CON ASSET LOCAL
      // theme: ThemeData(
      //   fontFamily: "FuenteInstitucional",
      //   textTheme: TextTheme(
      //     headlineLarge: TextStyle(fontSize: 32),
      //     bodyMedium: TextStyle(fontSize: 16),
      //   ),
      // ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// void main() {
//   runApp(MaterialApp.router(routerConfig: approuter));
// }
