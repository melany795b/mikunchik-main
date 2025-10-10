// lib/screens/principal_screen.dart

import 'package:flutter/material.dart';
import '../utils/image_urls.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({super.key});
  @override
  PrincipalScreenState createState() => PrincipalScreenState();
}

class PrincipalScreenState extends State<PrincipalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFF2A71A),
        title: Row(
          children: [
            const CircleAvatar(
              // Placeholder for user image
              backgroundImage: NetworkImage(AppImageUrls.perfilAvatar),
            ),
            const SizedBox(width: 10),
            const Text(
              "Sonia Perez",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "¿Qué cocinaremos Hoy?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: "Busca tu receta aquí",
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Grid de Categorías
              GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildCategoryItem("Desayuno", AppImageUrls.desayunoIcon),
                  _buildCategoryItem("Snack", AppImageUrls.snackIcon),
                  _buildCategoryItem("Almuerzo", AppImageUrls.almuerzoIcon),
                  _buildCategoryItem("Cena", AppImageUrls.cenaIcon),
                  _buildCategoryItem("Refrigerios", AppImageUrls.refrigeriosIcon),
                  _buildCategoryItem("Postres", AppImageUrls.postresIcon),
                  _buildCategoryItem("Bebidas", AppImageUrls.bebidasIcon),
                  _buildCategoryItem("Ver más...", AppImageUrls.verMasIcon),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                "En tendencia",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Tarjetas de Tendencia
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildTrendingCard(
                      "Arroz Chaufa", "Receta de Susana", "4.5", AppImageUrls.arrozChaufa),
                    const SizedBox(width: 16),
                    _buildTrendingCard(
                      "Palta con Re", "Receta de José", "4.8", AppImageUrls.paltaRellena),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryItem(String title, String imageUrl) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(imageUrl, height: 40),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrendingCard(String title, String author, String rating, String imageUrl) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      author,
                      style: const TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    Row(
                      children: [
                        Image.network(AppImageUrls.starIcon, width: 15, height: 15),
                        const SizedBox(width: 4),
                        Text(
                          rating,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}