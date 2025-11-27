import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({super.key});

  Widget _buildContainers(String text) {
    return Container(
      height: 50,
      width: 200,
      color: Colors.red,
      margin: EdgeInsets.all(16),
      child: Center(child: Text(text)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scroll Page")),
      body: Column(
        children: [
          Text("CABECERA 1"),
          Expanded(
            child: SingleChildScrollView(
              // scrollDirection: Axis.horizontal, //Scroll horizontal, funciona con un child Row
              child: Column(
                children: [
                  _buildContainers("1"),
                  _buildContainers("1"),
                  _buildContainers("1"),
                  _buildContainers("1"),
                  _buildContainers("1"),
                  _buildContainers("1"),
                  _buildContainers("1"),
                  _buildContainers("1"),
                  _buildContainers("1"),
                  _buildContainers("1"),
                  _buildContainers("1"),
                  _buildContainers("1"),
                  _buildContainers("1"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
