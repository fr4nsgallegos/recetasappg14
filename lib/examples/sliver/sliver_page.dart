import 'package:flutter/material.dart';
import 'package:recetasappg14/examples/sliver/sliver_listbuilder_tab.dart';
import 'package:recetasappg14/examples/sliver/sliver_listdelegate_tab.dart';
import 'package:recetasappg14/examples/sliver/sliver_separated_tab.dart';

// SLIVER
// Widget de bajo nivel optimizado para Scroll, dibuja por  partes o segmentes en vez de cargar toda la pantalla
// Los Slivers se usan dentro de un contenedor
// CustomScrollview(
//   sliver:[
//     // dbujamos los slivers
//   ]
// )

class SliverPage extends StatelessWidget {
  const SliverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sliver ejemplos"),

          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Text("Builder"),
              Text("ListDelegate"),
              Text("Separated"),
              Text("fixedExtent"),
              Text("Headers"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SliverListbuilderTab(),
            SliverListdelegateTab(),
            SliverSeparatedTab(),
            Text("data"),
            Text("data"),
          ],
        ),
      ),
    );
  }
}
