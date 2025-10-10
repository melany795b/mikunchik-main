// lib/screens/publicar_screen.dart

import 'package:flutter/material.dart';
import '../utils/image_urls.dart';

class PublicarScreen extends StatefulWidget {
  const PublicarScreen({super.key});
  @override
  PublicarScreenState createState() => PublicarScreenState();
}

class PublicarScreenState extends State<PublicarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Comparte tu receta", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextField("Nombre del plato", "Ej. Lomo Saltado"),
            const SizedBox(height: 16),
            const Text("Fotografía(s)", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 8),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.add_a_photo, color: Colors.grey, size: 40),
            ),
            const SizedBox(height: 16),
            _buildTextField("Ingredientes", "¿Qué necesita?", maxLines: 5),
            const SizedBox(height: 16),
            _buildTextField("Procedimiento", "¿Cómo se prepara?", maxLines: 8),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(child: _buildTextField("Presupuesto", "S/.")),
                const SizedBox(width: 16),
                Expanded(child: _buildTextField("Número de platos", "Para 1")),
              ],
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Lógica para publicar
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Receta publicada con éxito!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF2A71A),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: const Text(
                  "Publicar",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint, {int maxLines = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 20)),
        const SizedBox(height: 8),
        TextField(
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey),
            filled: true,
            fillColor: Colors.grey[100],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black, width: 1),
            ),
          ),
        ),
      ],
    );
  }
}