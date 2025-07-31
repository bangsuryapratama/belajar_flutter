import 'package:bangsur_project/latihan/detail_eo.dart';
import 'package:bangsur_project/main_layout.dart';
import 'package:flutter/material.dart';

class EventListScreen extends StatelessWidget {
  const EventListScreen({super.key});

  final List<Map<String, String>> events = const [
    {
      'title': 'Pesta Rakyat',
      'description': 'Pesta Rakyat Bersama DEDI MULYADI',
      'image': 'https://herald.id/wp-content/uploads/2023/07/Photolab-49692914.jpeg',
    },
    {
      'title': 'Kelulusan Kelas 12',
      'description': 'Pelepasan Kelas 12 SMK ASSALAAM BANDUNG',
      'image': 'https://herald.id/wp-content/uploads/2023/07/Photolab-49692914.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Daftar Event',
      body: ListView.builder(
        itemCount: events.length,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          final eventItem = events[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => EoDetail(data: eventItem),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 15),
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Gambar Event
                  ClipRRect(
                    borderRadius: const BorderRadius.horizontal(left: Radius.circular(16)),
                    child: Image.network(
                      eventItem['image']!,
                      width: 110,
                      height: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        width: 110,
                        color: Colors.grey[300],
                        child: const Icon(Icons.image_not_supported),
                      ),
                    ),
                  ),

                  // Informasi Event
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            eventItem['title']!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            eventItem['description']!,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
