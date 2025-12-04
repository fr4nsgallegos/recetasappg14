import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigatorWithapprouterPage extends StatelessWidget {
  const NavigatorWithapprouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/home'); //Reemplaza la página
              },
              child: Text("Go HomePage"),
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/scrollPage'); //Apilar pantalla
              },
              child: Text("Push ScrollPage"),
            ),
          ],
        ),
      ),
    );
  }
}
