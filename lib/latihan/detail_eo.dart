import 'package:bangsur_project/main_layout.dart';
import 'package:flutter/material.dart';

class EoDetail extends StatelessWidget {
  final Map<String, String> data;
  const EoDetail({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: data['title'] ?? 'Detail Event',
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Event
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                data['image'] ?? '',
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 220,
                  width: double.infinity,
                  color: Colors.grey[300],
                  alignment: Alignment.center,
                  child: const Icon(Icons.broken_image, size: 48, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Judul
            Text(
              data['title'] ?? '',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),

            // Deskripsi
            Text(
              data['description'] ?? '',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
