import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recetasappg14/models/receta_model.dart';

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
            ElevatedButton(
              onPressed: () {
                context.push('/producto/10');
              },
              child: Text("Push producto con parámetro string"),
            ),
            ElevatedButton(
              onPressed: () {
                RecetaModel recetaWafles = RecetaModel(
                  title: "Wafles",
                  preparation:
                      "Luego con un colador tamizamos la harina y el polvo de hornear. Luego los incluimos en la mezcla anterior y mezclamos hasta formar una pasta lisa y uniforme.Calentamos la waflera a la temperatura deseada y rociamos aceite en spray. Luego, colocamos la mezcla dentro y dejamoscocinar.Una vez listo, retirar el waffle, disponer sobre un plato y decorar con crema chantilly, frutillas, arándanos, hojas de menta y un generoso chorro de miel.",
                  urlImage:
                      "https://images.pexels.com/photos/789327/pexels-photo-789327.jpeg",
                );
                context.push('/recetaPage', extra: recetaWafles);
              },
              child: Text("Push a recetaPage con parámetro model"),
            ),
          ],
        ),
      ),
    );
  }
}
