// lib/screens/feed_screen.dart

import 'package:flutter/material.dart';
import '../utils/image_urls.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});
  @override
  FeedScreenState createState() => FeedScreenState();
}

class FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFF2A71A),
        title: const Text("Para ti"),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          _buildFeedCard(
            userName: "Sonia Perez",
            userAvatar: AppImageUrls.soniaPerezAvatar,
            dishName: "Ají criollo",
            category: "Almuerzo",
            description: "Deliciosa receta para la familia con tan solo S/.20.00\nIngredientes:\n1 kilo de arroz\n10g de sal\nver más",
            imageUrl: AppImageUrls.ajiCriollo1,
            likes: "232",
            comments: "39",
          ),
          const SizedBox(height: 16),
           _buildFeedCard(
            userName: "Luis Nuñez",
            userAvatar: AppImageUrls.luisNunezAvatar,
            dishName: "Lomo de Saltado de Cuy",
            category: "Desayuno",
            description: "Deliciosa receta para la familia con tan solo S/.33.00\nIngredientes:\n1 kilo de arroz\n10g de sal\nver más",
            imageUrl: AppImageUrls.lomoSaltadoCuy,
            likes: "412",
            comments: "56",
          ),
        ],
      ),
    );
  }

  Widget _buildFeedCard({
    required String userName,
    required String userAvatar,
    required String dishName,
    required String category,
    required String description,
    required String imageUrl,
    required String likes,
    required String comments,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(userAvatar)),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userName, style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(dishName, style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
                Text(category, style: TextStyle(color: Colors.grey[600])),
              ],
            ),
          ),
          // Image
          Image.network(imageUrl,
              height: 200, width: double.infinity, fit: BoxFit.cover),
          // Description
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(description, style: TextStyle(color: Colors.grey[800])),
          ),
          // Actions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.favorite_border),
                    const SizedBox(width: 4),
                    Text(likes),
                    const SizedBox(width: 16),
                    const Icon(Icons.comment_outlined),
                    const SizedBox(width: 4),
                    Text(comments),
                    const SizedBox(width: 16),
                    const Icon(Icons.share_outlined),
                  ],
                ),
                const Icon(Icons.bookmark_border),
              ],
            ),
          )
        ],
      ),
    );
  }
}