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
                  MaterialPageRoute(builder: (context) => DetallePage()),
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
  const DetallePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalle")),
      body: Center(child: Text("Soy la página detalle")),
    );
  }
}
