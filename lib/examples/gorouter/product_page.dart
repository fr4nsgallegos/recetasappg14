import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  String id;
  ProductPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(id, style: TextStyle(fontSize: 30))),
    );
  }
}
