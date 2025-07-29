import 'package:flutter/material.dart';
import 'package:bangsur_project/main_layout.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {

    final double maxWidth = 600;

    return MainLayout(
      title: 'News Card',
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // CARD 1
              Container(
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                constraints: BoxConstraints(maxWidth: maxWidth),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(12)),
                      child: Image.network(
                        'https://herald.id/wp-content/uploads/2023/07/Photolab-49692914.jpeg',
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Prabowo Presiden RI',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Stay strong Indonesia!',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.access_time, size: 14),
                              SizedBox(width: 6),
                              Text('10 mins ago',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // CARD 2
              Container(
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                constraints: BoxConstraints(maxWidth: maxWidth),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(12)),
                      child: Image.asset(
                        'assets/bil.png',
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Surya Calon Billionare',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 6),
                          Text('From Hero to Zero', style: TextStyle(fontSize: 14)),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.access_time, size: 14),
                              SizedBox(width: 6),
                              Text('1 hour ago', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // CARD 3
              Container(
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                constraints: BoxConstraints(maxWidth: maxWidth),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(12)),
                      child: Image.network(
                        'https://image.vovworld.vn/w730/uploaded/vovworld/cuhbatnauvaqb/2020_12_21/12-indonesiadudoan_knvr.jpg',
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ekonomi Bangkit?',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 6),
                          Text('Prediksi Pasar 2025',
                              style: TextStyle(fontSize: 14)),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.access_time, size: 14),
                              SizedBox(width: 6),
                              Text('3 hours ago',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
