import 'package:flutter/material.dart';

// Cuando todos los elementos tienen la misma altura, podemos usar sliverfixedextentlist para optimizar el scroll

// ventajas -> flutter ya sabe la altura, cálculo más rápido que SliverList, No necesita medir el widget para saber cuaánto ocupa
class SliverFixedExtentlistTab extends StatelessWidget {
  const SliverFixedExtentlistTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(pinned: true, title: Text("Fixed extent (alto fijo)")),
        SliverFixedExtentList(
          //  itemExtent define el alto exacto de cada item, optimiza el layout
          itemExtent: 120,
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              alignment: Alignment.center,
              // YA NO ES NECESARIO COLOCAR LA ALTURA, ESTA LA DEFINE EL SLIVER
              color: index.isEven ? Colors.indigo : Colors.teal,
              child: ListTile(
                leading: Icon(Icons.height),
                title: Text("Fila de altura fija $index"),
                subtitle: Text("Rinde mejor que sliverlist en este caso"),
              ),
            );
          }, childCount: 60),
        ),
      ],
    );
  }
}
