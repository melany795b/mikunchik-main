// lib/main.dart

import 'package:flutter/material.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/main_handler.dart';
import 'screens/perfil/personalizar_screen.dart';

void main() {
  runApp(const MikunchikApp());
}

class MikunchikApp extends StatelessWidget {
  const MikunchikApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mikunchik',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      // La ruta inicial de la aplicación.
      initialRoute: '/login',
      // Definición de las rutas nombradas para una navegación limpia.
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/main': (context) => const MainHandler(),
        '/personalizar': (context) => const PersonalizarScreen(),
      },
    );
  }
}