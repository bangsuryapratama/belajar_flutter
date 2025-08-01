import 'package:bangsur_project/hotel/hotel_detail_grid.dart';
import 'package:bangsur_project/main_layout.dart';
import 'package:flutter/material.dart';

class HotelGrid extends StatelessWidget {
  final List<Map<String, dynamic>> hotels = [
    {
      'nama': 'Hotel Adudu',
      'lokasi': 'Bandung',
      'hargapermalam': 200000,
      'rating': 4,
      'image':
          'https://tse2.mm.bing.net/th/id/OIP.5KQqD57MJl3yVmg98OrKMgHaFj?rs=1&pid=ImgDetMain&o=7&rm=3',
      'fasilitas' : ['WiFi', 'AC', 'TV'],
    },
    {
      'nama': 'Hotel Budiman',
      'lokasi': 'Bandung',
      'hargapermalam': 200000,
      'rating': 5,
      'image':
          'https://pix10.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?s=1024x768',
    },
    {
      'nama': 'Hotel Labaik',
      'lokasi': 'Bandung',
      'hargapermalam': 250000,
      'rating': 3,
      'image':
          'https://th.bing.com/th/id/R.e2c8b166b8f4a000fb2488cd92c63991?rik=geREr3s1UVq%2bsg&riu=http%3a%2f%2feduspiral.files.wordpress.com%2f2011%2f11%2fhotels.jpg&ehk=wJv3%2bOd1%2fxlpbFLP8JT4h2EiwYfrvXqnXviymWQjo%2bQ%3d&risl=&pid=ImgRaw&r=0',
      'fasilitas' : ['WiFi', 'AC', 'TV'],
    },
    {
      'nama': 'Hotel Agustono',
      'lokasi': 'Bandung',
      'hargapermalam': 200000,
      'rating': 4,
      'image':
          'https://tse2.mm.bing.net/th/id/OIP.7E_3LtAnhstWfcRTfoZeggHaDt?rs=1&pid=ImgDetMain&o=7&rm=3',
      'fasilitas' : ['WiFi', 'AC', 'TV'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.hotel, color: Colors.black, size: 28),
          const SizedBox(width: 10),
          Text(
            'HOTEL MBAH UDIN',
            style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            fontSize: 20,
            ),
          ),
        ],
      ),

      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: hotels.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          final hotel = hotels[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => HotelDetailGrid(hotel: hotel),
                ),
              );
            },
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                    child: Image.network(
                      hotel['image'],
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          hotel['nama'],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(Icons.location_on, size: 16, color: Colors.red),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Text(
                                hotel['lokasi'],
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Rp ${hotel['hargapermalam'].toString().replaceAllMapped(
                            RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                            (Match m) => '${m[1]}.',
                          )} / malam',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: List.generate(
                            5,
                            (i) => Icon(
                              i < hotel['rating'] ? Icons.star : Icons.star_border,
                              size: 18,
                              color: Colors.orange,
                            ),
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
    );
  }
}
