// lib/screens/perfil/perfil_screen.dart
import 'package:flutter/material.dart';
import '../../utils/image_urls.dart';

class PerfilScreen extends StatefulWidget {
	const PerfilScreen({super.key});
	@override
		PerfilScreenState createState() => PerfilScreenState();
	}
class PerfilScreenState extends State<PerfilScreen> {
	@override
	Widget build(BuildContext context) {
		// Pega aquí el código del widget 'Perfil'
		// Y añade un botón para navegar a la pantalla de personalización
		return Scaffold(
			appBar: AppBar(
				title: Text("Mi Perfil"),
				actions: [
					IconButton(
						icon: Icon(Icons.edit),
						onPressed: () {
							Navigator.pushNamed(context, '/personalizar');
						},
					)
				],
			),
			body: Center(child: Text("Contenido de Perfil Screen")), // Reemplaza esto con tu código de UI
		);
	}
}