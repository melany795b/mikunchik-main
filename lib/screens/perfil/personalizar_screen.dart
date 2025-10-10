// lib/screens/perfil/personalizar_screen.dart

import 'package:flutter/material.dart';
  import '../../utils/image_urls.dart';

class PersonalizarScreen extends StatefulWidget {
  const PersonalizarScreen({super.key});
  @override
  PersonalizarScreenState createState() => PersonalizarScreenState();
}

class PersonalizarScreenState extends State<PersonalizarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Editar Perfil"),
        backgroundColor: const Color(0xFFF2A71A),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Stack(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(AppImageUrls.personalizarAvatar),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF2A71A),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.edit, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              "Editar foto de perfil",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
            const SizedBox(height: 32),
            _buildInfoTextField("Nombre", "Sonia Perez"),
            const SizedBox(height: 16),
            _buildInfoTextField("Género", "Femenino"),
            const SizedBox(height: 16),
            _buildInfoTextField("País", "Perú"),
            const SizedBox(height: 16),
            _buildInfoTextField("Ciudad", "Cusco"),
            const SizedBox(height: 16),
            _buildInfoTextField(
              "Añade una descripción",
              "Soy Sonia Perez de Cusco y me gusta cocinar",
              maxLines: 3,
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF2A71A),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: const Text(
                  "Guardar",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTextField(String label, String initialValue, {int maxLines = 1}) {
    return TextFormField(
      initialValue: initialValue,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}