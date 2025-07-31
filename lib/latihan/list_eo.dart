import 'package:bangsur_project/latihan/detail_eo.dart';
import 'package:bangsur_project/main_layout.dart';
import 'package:flutter/material.dart';

class EventListScreen extends StatelessWidget {
  const EventListScreen({super.key});

  final List<Map<String, String>> event = const [
    {
      'title' : 'Pesta Rakyat',
      'description' : 'Pesta Rakyat Bersama DEDI MULYADI',
      'image' : 'https://herald.id/wp-content/uploads/2023/07/Photolab-49692914.jpeg'
    },
    {
      'title' : 'Kelulusan Kelas 12',
      'description' : 'Pelepasan Kelas 12 SMK ASSALAAM BANDUNG',
      'image' : 'https://herald.id/wp-content/uploads/2023/07/Photolab-49692914.jpeg'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Event',
      body: ListView.builder(
        itemCount: event.length,
        itemBuilder: (context, index){
          final Event = event[index];
          return GestureDetector(
            onTap: (){
              Navigator.push(context,
               MaterialPageRoute(builder: 
               (_) => EoDetail(data: Event),
               ),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 120,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const[
                  BoxShadow(color: Colors.black12, blurRadius: 7)
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                        image: DecorationImage(
                          image: NetworkImage(Event['image']!),
                          fit: BoxFit.cover,
                        ),
                    ),
                   ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(Event['title']!,
                          style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 5),
                            Text(Event['description']!,
                              style: const TextStyle(fontSize: 13)),
                        ],
                      ),
                    )
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