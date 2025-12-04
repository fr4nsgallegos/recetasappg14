import 'package:flutter/material.dart';

// Hace construccion perezcosa (lazy loading)
// Equivalente a Listview.builder, perso en versión sliver
// Crea items solo cuando aparecen en la pantalla
// Ideal para listas largas (1000,50000 o + )
// Ahorra memoria y mejora el rendimiento del App

class SliverListbuilderTab extends StatelessWidget {
  int cantidad = 50;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: Container(),
          pinned: true,
          expandedHeight: 140,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Builder (perezoso)"),
            collapseMode: CollapseMode.parallax,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: SliverList(
            // builder: crea bajo demanda lo que se va a mostrar en pantalla - funcionamiento parecido al listview.builder para mejorar el rendimiento
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                print(index);
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(child: Text("${index + 1}")),
                    title: Text("Producto $index"),
                    subtitle: Text("Contruyendo bajo demanda"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                );
              },
              childCount:
                  cantidad, //por defecto suele ser null ya que construye una cantidad infinita de elementos
              addRepaintBoundaries: true, //optimiza el repintado
              addSemanticIndexes: true, //accesibilidad
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text("Fin de la lista builder"),
          ),
        ),
      ],
    );
  }
}
