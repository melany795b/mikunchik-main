// lib/screens/auth/login_screen.dart

import 'package:flutter/material.dart';
import '../../utils/image_urls.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 80),
                Image.network(
                  AppImageUrls.logo,
                  height: 123,
                ),
                const SizedBox(height: 30),
                const Text(
                  "INICIAR SESIÓN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 32),
                const TextField(
                  decoration: InputDecoration(
                    labelText: "Usuario o correo electrónico",
                    filled: true,
                    fillColor: Color(0xFFF0F0F0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 19),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Contraseña",
                    filled: true,
                    fillColor: Color(0xFFF0F0F0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/main');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF2A71A),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Ingresar",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "O ingresa con",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 12),
                Center(
                  child: Image.network(
                    AppImageUrls.googleIcon,
                    width: 33,
                    height: 33,
                  ),
                ),
                const SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("¿Aún no tienes una cuenta? "),
                      Text(
                        "Regístrate",
                        style: TextStyle(
                          color: Color(0xFFF2A71A),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}