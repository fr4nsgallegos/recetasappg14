import 'package:flutter/material.dart';

// Sliver separado no existe, pero podemos crearlo con la técnica de indices pares e impares

// truco -> Si tengo 20 items  = doble de la cantidad -1 -> 20*2 = 40 -> 40-1 = 39
// childcouunt = 39

// Si index es impar -> usamos separator

// Convertir el índice "virtual" a indice real de datos

class SliverSeparatedTab extends StatelessWidget {
  SliverSeparatedTab({super.key});

  @override
  final items = List.generate(20, (i) => "item $i");
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(pinned: true, title: Text("Separated simulado")),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            // indices pares -> item
            // indices impares -> separador
            if (index.isOdd) {
              return Divider(color: Colors.red, height: 16, thickness: 2);
            }
            final realIndex = index ~/ 2; //division truncada entre 2
            return ListTile(
              leading: Icon(Icons.label_outline_rounded),
              title: Text(items[realIndex]),
            );
          }, childCount: items.length * 2 - 1),
        ),
      ],
    );
  }
}
