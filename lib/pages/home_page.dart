import 'package:flutter/material.dart';
import 'package:recetasappg14/widgets/form_item_widget.dart';

class HomePage extends StatelessWidget {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _preparationController = TextEditingController();
  TextEditingController _imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C3248),
      appBar: AppBar(
        backgroundColor: Color(0xff0C3248),
        foregroundColor: Colors.white,
        title: Text("App de recetas"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              FormItemWidget(
                controller: _titleController,
                hint: "Ingresa el títuñp",
                iconData: Icons.title,
              ),
              FormItemWidget(
                controller: _preparationController,
                hint: "Ingresa la preparación",
                iconData: Icons.list,
                maxLines: 3,
              ),
              FormItemWidget(
                controller: _imageController,
                hint: "Ingresa la url de la imagen",
                iconData: Icons.image,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
