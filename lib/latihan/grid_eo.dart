import 'package:flutter/material.dart';
import 'package:bangsur_project/main_layout.dart';
import 'package:bangsur_project/latihan/list_eo.dart';

class GridEventO extends StatelessWidget {
  const GridEventO({super.key});

  final List<Map<String, String>> products = const [
    {
      'name': 'Event Organizer',
      'price': 'Masuk',
      'image': 'https://lzd-img-global.slatic.net/g/p/142d2d7f01f712ee759d37bd2ee75cef.jpg_720x720q80.jpg'
    },
    {
      'name': 'Event Organizer',
      'price': 'Masuk',
      'image': 'https://lzd-img-global.slatic.net/g/p/142d2d7f01f712ee759d37bd2ee75cef.jpg_720x720q80.jpg'
    },
    {
      'name': 'Event Organizer',
      'price': 'Masuk',
      'image': 'https://lzd-img-global.slatic.net/g/p/142d2d7f01f712ee759d37bd2ee75cef.jpg_720x720q80.jpg'
    },
    {
      'name': 'Event Organizer',
      'price': 'Masuk',
      'image': 'https://lzd-img-global.slatic.net/g/p/142d2d7f01f712ee759d37bd2ee75cef.jpg_720x720q80.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Event Organizer',
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final product = products[index];

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const EventListScreen()),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  children: [
                    // Gambar latar belakang
                    Positioned.fill(
                      child: Image.network(
                        product['image']!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Center(child: Icon(Icons.broken_image)),
                      ),
                    ),
                    // Overlay gradasi
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.7),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                    // Teks
                    Positioned(
                      bottom: 12,
                      left: 12,
                      right: 12,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product['name']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              shadows: [Shadow(blurRadius: 4, color: Colors.black)],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            product['price']!,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
