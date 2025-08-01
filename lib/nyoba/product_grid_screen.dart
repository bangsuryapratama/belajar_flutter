import 'package:bangsur_project/nyoba/product_detail_screen.dart';
import 'package:flutter/material.dart';



class ProductGridScreen extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {'name': 'Produk A', 'price': 10000, 'image': 'https://down-id.img.susercontent.com/file/id-11134207-7r98v-lmfx7cyn5zt801'},
    {'name': 'Produk B', 'price': 20000, 'image': 'https://down-id.img.susercontent.com/file/id-11134207-7r98v-lmfx7cyn5zt801'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Produk')),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 3 / 4, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => ProductDetailScreen(product: product),
              ));
            },
            child: Card(
              child: Column(
                children: [
                  Image.network(product['image'], height: 100),
                  SizedBox(height: 10),
                  Text(product['name']),
                  Text('Rp ${product['price']}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
