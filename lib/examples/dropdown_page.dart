import 'package:flutter/material.dart';

class DropdownPage extends StatefulWidget {
  DropdownPage({super.key});

  @override
  State<DropdownPage> createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  String? selectedValue;
  List<String> paises = ["Perú", "Chile", "Argentina", "EEUU"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButton(
              hint: Text("Seleccionar el país"),
              value: selectedValue,
              items: paises.map((pais) {
                return DropdownMenuItem(child: Text(pais), value: pais);
              }).toList(),
              onChanged: (value) {
                selectedValue = value;
                print(selectedValue);
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
