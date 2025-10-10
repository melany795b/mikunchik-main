// lib/screens/auth/register_screen.dart
import 'package:flutter/material.dart';
import '../../utils/image_urls.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  RegisterScreenState createState() => RegisterScreenState();
}
class RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registro"),
        backgroundColor: const Color(0xFFF2A71A),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
           child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 50),
                Image.network(
                  AppImageUrls.logo,
                  height: 123,
                ),
                const SizedBox(height: 30),
                const Text(
                  "REGÍSTRATE",
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
                  decoration: InputDecoration(
                    labelText: "Nombre Completo",
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
                     Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF2A71A),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Crear Cuenta",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 40),
                 InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("¿Ya tienes una cuenta? "),
                      Text(
                        "Ingresa aquí",
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