import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recetasappg14/models/receta_model.dart';
import 'package:recetasappg14/widgets/form_item_widget.dart';
import 'package:recetasappg14/widgets/receta_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _preparationController = TextEditingController();
  TextEditingController _imageController = TextEditingController();

  RecetaModel recetaWafles = RecetaModel(
    title: "Wafles",
    preparation:
        "Luego con un colador tamizamos la harina y el polvo de hornear. Luego los incluimos en la mezcla anterior y mezclamos hasta formar una pasta lisa y uniforme.Calentamos la waflera a la temperatura deseada y rociamos aceite en spray. Luego, colocamos la mezcla dentro y dejamoscocinar.Una vez listo, retirar el waffle, disponer sobre un plato y decorar con crema chantilly, frutillas, arándanos, hojas de menta y un generoso chorro de miel.",
    urlImage:
        "https://images.pexels.com/photos/789327/pexels-photo-789327.jpeg",
  );

  List<RecetaModel> recetasList = [];

  @override
  void initState() {
    super.initState();
    recetasList.add(recetaWafles);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0C3248),
      appBar: AppBar(
        backgroundColor: Color(0xff0C3248),
        foregroundColor: Colors.white,
        title: Text(
          "App de recetas",
          style: TextStyle(
            fontFamily: "Jaro", //se usa la fuenta local
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Hola este es un texto con estilo de Google Fonts",
                  style: GoogleFonts.roboto(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                FormItemWidget(
                  controller: _titleController,
                  hint: "Ingresa el título",
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
                ElevatedButton(
                  onPressed: () {
                    RecetaModel recetaAux = RecetaModel(
                      title: _titleController.text,
                      preparation: _preparationController.text,
                      urlImage: _imageController.text,
                    );
                    recetasList.add(recetaAux);
                    _titleController.clear();
                    _preparationController.clear();
                    _imageController.clear();
                    setState(() {});
                  },
                  child: Text("Registrar receta"),
                ),
                SizedBox(height: 16),
                ...recetasList.map((e) {
                  return RecetaCardWidget(e);
                }).toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
