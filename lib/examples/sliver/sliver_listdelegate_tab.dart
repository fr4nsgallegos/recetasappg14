import 'package:flutter/material.dart';
// A diferencia del builder, aquí ya tenemos la lista totalmente construida
// ideal para filas de 10 a 50
// listas estáticas o configuradas a mano
// Mezcla de widgets heterogeneos

// NO es recomendable para listas largas

class SliverListdelegateTab extends StatelessWidget {
  const SliverListdelegateTab({super.key});

  @override
  Widget build(BuildContext context) {
    // Ya tenemos lo hijos creados (una lista corta estática)
    final children = List.generate(
      12,
      (index) => ListTile(
        leading: Icon(Icons.star),
        title: Text("Elemento estático ${index + 1}"),
        subtitle: Text("Ya ha sido creado desde antes"),
      ),
    );
    return CustomScrollView(
      slivers: [
        SliverAppBar(pinned: true, title: Text("Listdelegate (estático)")),
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(16),
                child: Text("Inicio previo a la lista"),
              ),
              ...children,
              Container(
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text("Bloque final, dentro del mismo sliverlist"),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
