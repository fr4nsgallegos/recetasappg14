import 'package:flutter/material.dart';
// HEADERS PEGAJOSOS
// Es un sliver que permanece visible arriba mientras se hace Scroll -> Sticky header
// Útil para listas por categorías, contctos ordenados po letra, catálogos grandes, etc

class SliverPersistentHeaderTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const sections = [
      {
        "title": "Frutas",
        "items": ["Manzana", "Pera", "Durazno", "Fresa"],
      },
      {
        "title": "Verduras",
        "items": [
          "Zanahora",
          "Lechuga",
          "Tomate",
          "Zanahora",
          "Lechuga",
          "Tomate",
          "Zanahora",
          "Lechuga",
          "Tomate",
          "Zanahora",
          "Lechuga",
          "Tomate",
          "Zanahora",
          "Lechuga",
          "Tomate",
          "Zanahora",
          "Lechuga",
          "Tomate",
          "Zanahora",
          "Lechuga",
          "Tomate",
          "Zanahora",
          "Lechuga",
          "Tomate",
        ],
      },
      {
        "title": "granos",
        "items": [
          "Quinua",
          "Arronz",
          "Trigo",
          "Quinua",
          "Arronz",
          "Trigo",
          "Quinua",
          "Arronz",
          "Trigo",
          "Quinua",
          "Arronz",
          "Trigo",
          "Quinua",
          "Arronz",
          "Trigo",
          "Quinua",
          "Arronz",
          "Trigo",
          "Quinua",
          "Arronz",
          "Trigo",
          "Quinua",
          "Arronz",
          "Trigo",
          "Quinua",
          "Arronz",
          "Trigo",
          "Quinua",
          "Arronz",
          "Trigo",
          "Quinua",
          "Arronz",
          "Trigo",
        ],
      },
    ];

    final slivers = <Widget>[
      SliverAppBar(
        pinned: true,
        expandedHeight: 120,
        flexibleSpace: FlexibleSpaceBar(title: Text("Headers pegajosos")),
      ),
    ];
    // Contruimos lo headers -> lista de item para cada sección
    for (final section in sections) {
      final title = section["title"] as String;
      final items = section["items"] as List<String>;

      slivers.add(
        SliverPersistentHeader(
          pinned: true,
          delegate: _SectionHeaderDelegate(title: title),
        ),
      );
      slivers.add(
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              leading: Icon(Icons.local_offer_outlined),
              title: Text(items[index]),
            );
          }, childCount: items.length),
        ),
      );
    }
    return CustomScrollView(slivers: slivers);
  }
}

class _SectionHeaderDelegate extends SliverPersistentHeaderDelegate {
  String title;
  _SectionHeaderDelegate({required this.title});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text(title, style: Theme.of(context).textTheme.titleLarge),
    );
  }

  // Alturas mínimas y máximas para el header
  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  // Indica cuando reconstruir si se cambian parámetros
  @override
  bool shouldRebuild(covariant _SectionHeaderDelegate oldDelegate) {
    return oldDelegate.title != title;
  }
}
