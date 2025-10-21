// lib/main.dart

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // 👈 Importante
import 'firebase_options.dart'; // 👈 Archivo generado por FlutterFire CLI

import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/main_handler.dart';
import 'screens/perfil/personalizar_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 👈 Necesario para usar Firebase antes del runApp

  // Inicializa Firebase con la configuración según la plataforma
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  print('✅ Firebase inicializado correctamente');

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
      // Ruta inicial
      initialRoute: '/login',
      // Rutas nombradas
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/main': (context) => const MainHandler(),
        '/personalizar': (context) => const PersonalizarScreen(),
      },
    );
  }
}
