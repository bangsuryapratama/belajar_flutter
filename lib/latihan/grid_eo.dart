import 'package:flutter/material.dart';
import 'package:bangsur_project/main_layout.dart';
import 'package:bangsur_project/latihan/list_eo.dart'; // pastikan path sesuai

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
      title: 'Event Grid',
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
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
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100],
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 6),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(product['image']!, fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product['name']!,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text(product['price']!,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12)),
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
