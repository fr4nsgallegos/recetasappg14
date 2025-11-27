import 'package:flutter/material.dart';

class TextformfieldPage extends StatelessWidget {
  TextformfieldPage({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextFormField Page")),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Ingresa tu correo",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Por favor ingresa tu correo";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 24),
                TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Ingresa tu contraseña",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Por favor ingresa tu contraseña";
                    } else if (value.length < 8) {
                      return "La contraseña debe tener al menos 8 caracteres";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    // Validando el formulario
                    if (_formkey.currentState!.validate()) {
                      print(_formkey.currentState!.validate());
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Form correcto, enviado"),
                          backgroundColor: Colors.green,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Revisa las alertas!"),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: Text("Enviar formulario"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
