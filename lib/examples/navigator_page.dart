import 'dart:ffi';

import 'package:flutter/material.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigator Page")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetallePage(nombre: "Jhonny"),
                  ),
                );
              },
              child: Text("Ir a DETALLE"),
            ),
          ],
        ),
      ),
    );
  }
}

class DetallePage extends StatelessWidget {
  String nombre;
  DetallePage({required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, "OK DESDE DETALLE PAGE APPBAR");
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Soy la página detalle"),
            Text(
              "El nombre es $nombre",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "OK DESDE DETALLE PAGE");
              },
              child: Text("Volver"),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigatorRoutesPage extends StatelessWidget {
  const NavigatorRoutesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => HomeNavigatorPage());
          case '/detalle':
            final arguments = settings.arguments as String?;
            return MaterialPageRoute(
              builder: (context) =>
                  DetallePage(nombre: arguments ?? "sin nombre"),
            );
          default:
            return MaterialPageRoute(
              builder: (context) =>
                  Scaffold(body: Center(child: Text("Ruta no encontrada"))),
            );
        }
      },
      // routes: {
      //   "/": (_) => HomeNavigatorPage(),
      //   "/detalle": (_) {
      //     final args = ModalRoute.of(context)!.settings.arguments as String?;
      //     return DetallePage(nombre: args ?? "sin nombre");
      //   },
      // },
    );
  }
}

class HomeNavigatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Navigator Page")),
      body: Center(
        child: Column(
          children: [
            // 1. ir a detalle page con argumentos y esperar un resultado
            ElevatedButton(
              onPressed: () async {
                // enviamos un agumento puede ser cualquier objeto
                final result = await Navigator.pushNamed(
                  context,
                  "/detalle",
                  arguments: "Hola desde el Home",
                );

                // al volver de detalle, mostramos el resultado si es que se devuelve algo
                if (context.mounted && result != null) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Resultado: $result")));
                }
              },
              child: Text("pushnamed a detalle con argumentos"),
            ),

            ElevatedButton(
              onPressed: () {
                print("Hola");
              },
              child: Text("go"),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Page")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text("About Page")],
        ),
      ),
    );
  }
}
